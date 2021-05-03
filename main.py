import argparse
from typing import Optional
from urllib import parse


def main():
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument('-a', '--aaa', type=str)
    arg_parser.add_argument('-b', '--bbb', type=int)
    args = arg_parser.parse_args()
    print(args)


if __name__ == '__main__':
    try:
        main()
    except Exception as e:
        exit(1)
