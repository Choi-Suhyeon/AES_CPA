import estraces
import struct
import tqdm


if __name__ == '__main__':
    path                 = '.\\'
    file_name            = 'aes_sample.ets'
    plaintext_file_name  = 'plaintext_assign.bin'
    ciphertext_file_name = 'ciphertext_assign.bin'
    waveform_name        = 'waveform_assign.bin'

    ths = estraces.read_ths_from_ets_file(path + file_name)

    plaintext  = b''.join(map(bytes, ths.plaintext))
    ciphertext = b''.join(map(bytes, ths.ciphertext))

    with open(path + plaintext_file_name, 'wb+') as f:
        f.write(plaintext)

    with open(path + ciphertext_file_name, 'wb+') as f:
        f.write(ciphertext)

    waveform_len = len(ths.samples[0])
    waveform_cnt = len(ths.samples)

    print(f'waveform len : {waveform_len}({hex(waveform_len)})')
    print(f'waveform cnt : {waveform_cnt}({hex(waveform_cnt)})')
    print('---------------------------------------')

    with open(path + waveform_name, 'wb+') as f:
        for w in tqdm.tqdm(ths.samples):
            f.write(b''.join(struct.pack('d', i) for i in w))
