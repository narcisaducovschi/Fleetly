export default function Hero() {
    return (
        <section
            aria-labelledby="hero-title"
            className="mx-auto grid max-w-7xl items-center gap-10 px-5 py-16 sm:px-8 md:grid-cols-2 md:py-24"
        >
            <div>
                <h1
                    id="hero-title"
                    className="max-w-xl text-4xl leading-tight font-bold tracking-tight sm:text-5xl lg:text-[60px] lg:leading-[1.1]"
                >
                    Tu flota y tu equipo, conectados.
                </h1>

                <p className="mt-6 max-w-lg text-lg leading-7 text-slate-600">
                    Los trabajadores registran su jornada desde el móvil.
                    Tú organizas vehículos, partes e incidencias desde el ERP.
                </p>

                <div className="mt-8 flex flex-wrap gap-4">
                    <a
                        href="#demo"
                        className="inline-flex min-h-12 items-center justify-center rounded-xl bg-[#1D4ED8] px-6 py-3 text-base font-semibold text-white transition-colors hover:bg-blue-800 focus-visible:outline-2 focus-visible:outline-offset-4 focus-visible:outline-blue-700"
                    >
                        Solicitar una demo
                    </a>

                    <a
                        href="#plataforma"
                        className="inline-flex min-h-12 items-center justify-center rounded-xl border border-blue-700 px-6 py-3 text-base font-semibold text-blue-700 transition-colors hover:bg-blue-50 focus-visible:outline-2 focus-visible:outline-offset-4 focus-visible:outline-blue-700"
                    >
                        Conocer Fleetly
                    </a>
                </div>
            </div>

            <div>
                <img
                    src="/images/landing/hero.webp"
                    alt="Camión, furgoneta y coche conectados mediante Fleetly"
                    width={1536}
                    height={1024}
                    fetchPriority="high"
                    className="h-auto w-full"
                />
            </div>
        </section>
    );
}