use dbus::blocking::Connection;
use std::error::Error;
use std::time::Duration;

fn main() -> Result<(), Box<dyn Error>> {
    println!("Hello, world!");

    let conn = Connection::new_session()?;

    let proxy = conn.with_proxy("org.freedesktop.DBus", "/", Duration::from_millis(5000));

    let (names,): (Vec<String>,) = proxy.method_call("org.freedesktop.DBus", "ListNames", ())?;

    for name in names {
        println!("{}", name);
    }

    Ok(())
}
