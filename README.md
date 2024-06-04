# This crate provides a Rust API for XML schemas used by libvirt

## Documentation

* https://libvirt.org/html/index.html
* https://docs.rs/crate/virtxml/

### To execute locally tests and other excerices

`cargo fmt -v -- --check`

The code is formatted using `rustfmt`, you should ensure that the
check is passing before to submit your patch(es). It may be required
to execute `rustup component add rustfmt` in your environment.

`cargo test --verbose`

Integration tests use a real connection to libvirtd. For instance
integration_qemu.rs uses a qemu:///system connection. They are all
ignored by default.

`cargo test --verbose -- --ignored`

## Contributing

For more information, see the [CONTRIBUTING](CONTRIBUTING.md) file.
