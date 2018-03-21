import numpy as np
import matplotlib.pyplot as plt
import struct


def analyze_incoming_data(inFile='300234066333770-40.bin', dataDir='/home/jrlab/Downloads/', show_plots=1, verbose=1, outpout_fig=None):
    # some frequency stuff
    fmin = 0.05
    fmax = 0.25
    nfreq = 25
    freq = np.exp(np.linspace(np.log(fmin), np.log(fmax), nfreq))

    # some format stuff
    fmt_all = '<' + 'f' * 10 + 'h' * nfreq * 6

    # read in data
    with open(dataDir + inFile, 'rb') as f:
        bin_data = f.read()

    data = struct.unpack(fmt_all, bin_data)

    # extract the data
    SWH = data[0]
    T_z0 = data[1]
    Hs = data[2]
    T_z = data[3]
    a0_max = data[4]
    a1_max = data[5]
    b1_max = data[6]
    a2_max = data[7]
    b2_max = data[8]
    R_max = data[9]
    a0 = np.array(data[10:35])
    a1 = np.array(data[35:60])
    b1 = np.array(data[60:85])
    a2 = np.array(data[85:110])
    b2 = np.array(data[110:135])
    R = np.array(data[135:160])

    if verbose > 1:
        print 'a0_max is {} type'.format(type(a0_max))
        print 'a0 is {} type'.format(type(a0))
        print a0

    if verbose > 0:
        print 'SWH = {0:.3f} m and Hs = {1:.3f} m'.format(SWH, Hs)
        print 'T_z0 = {0:.2f} s and T_z = {1:.2f} s'.format(T_z0, T_z)

    max_val = 2**15 - 1.0

    a0_proc = a0 * a0_max / max_val
    a1_proc = a1 * a1_max / max_val
    b1_proc = b1 * b1_max / max_val
    a2_proc = a2 * a2_max / max_val
    b2_proc = b2 * b2_max / max_val
    R_proc = R * R_max / max_val

    noise = (0.14 * 9.81e-3)**2 * ((2 * np.pi * freq)**(-4))

    if show_plots > 0:
        plt.figure()
        plt.plot(freq, a0_proc, '-o')
        plt.plot(freq, noise, 'k--')
        plt.yscale('log')
        plt.ylabel(r'$S \, / \,\mathrm{m}^2 \mathrm{Hz}^{-1}$')
        plt.xlabel(r'$\mathrm{f} \, / \, \mathrm{Hz}$')
        plt.xlim([fmin, fmax])

        if outpout_fig is not None:
            plt.savefig(outpout_fig)

        plt.figure()
        plt.subplot(221)
        plt.plot(freq, a1_proc, '-o')
        plt.xlim([fmin, fmax])
        plt.subplot(222)
        plt.plot(freq, b1_proc, '-o')
        plt.xlim([fmin, fmax])
        plt.subplot(223)
        plt.plot(freq, a2_proc, '-o')
        plt.xlim([fmin, fmax])
        plt.subplot(224)
        plt.plot(freq, b2_proc, '-o')
        plt.xlim([fmin, fmax])

        plt.figure()
        plt.plot(freq, R_proc, '-o')
        plt.xlim([fmin, fmax])
        plt.ylabel(r'$ \mathrm{R}$')
        plt.xlabel(r'$\mathrm{f} \, / \, \mathrm{Hz}$')

        plt.show()

    return(SWH, T_z0, Hs, T_z, a0_proc, a1_proc, a2_proc, b1_proc, b2_proc, R_proc)

analyze_incoming_data(inFile='300234066333770-50.bin', outpout_fig='/home/jrlab/Desktop/Current/fig_21032018_0706am')

analyze_incoming_data(inFile='300234066333770-48.bin', outpout_fig='/home/jrlab/Desktop/Current/fig_0648pm')

analyze_incoming_data(inFile='300234066333770-46.bin', outpout_fig='/home/jrlab/Desktop/Current/fig_0648pm')

analyze_incoming_data(inFile='300234066333770-44.bin', outpout_fig='/home/jrlab/Desktop/Current/fig_0648pm')

analyze_incoming_data(inFile='300234066333770-42.bin', outpout_fig='/home/jrlab/Desktop/Current/fig_0648pm')

analyze_incoming_data(inFile='300234066333770-40.bin', outpout_fig='/home/jrlab/Desktop/Current/fig_0648pm')

analyze_incoming_data(inFile='300234066333770-35.bin', outpout_fig='/home/jrlab/Desktop/Current/fig_still')
