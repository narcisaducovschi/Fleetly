import { Link } from '@inertiajs/react';

export default function Header() {
    return (
        <header className="border-b border-slate-200/60 bg-[#F5F7FD]">
            <div className="mx-auto flex h-20 max-w-7xl items-center justify-between px-5 sm:px-8">
                <a href="#inicio" aria-label="Fleetly: volver al inicio">
                    <img
                        src="/images/brand/fleetly-logo.svg"
                        alt="Fleetly"
                        className="h-9 w-auto"
                    />
                </a>

                <nav
                    aria-label="Navegación principal"
                    className="hidden items-center gap-8 md:flex"
                >
                    <a
                        href="#producto"
                        className="text-[15px] font-medium transition-colors hover:text-blue-700"
                    >
                        Producto
                    </a>

                    <a
                        href="#como-funciona"
                        className="text-[15px] font-medium transition-colors hover:text-blue-700"
                    >
                        Cómo funciona
                    </a>

                    <a
                        href="#preguntas"
                        className="text-[15px] font-medium transition-colors hover:text-blue-700"
                    >
                        Preguntas frecuentes
                    </a>
                </nav>

                <Link
                    href="/login"
                    className="inline-flex h-11 items-center justify-center rounded-xl bg-[#0E3679] px-5 text-sm font-semibold text-white transition-colors hover:bg-[#102D60] focus-visible:outline-2 focus-visible:outline-offset-4 focus-visible:outline-blue-700"
                >
                    Iniciar sesión
                </Link>
            </div>
        </header>
    );
}