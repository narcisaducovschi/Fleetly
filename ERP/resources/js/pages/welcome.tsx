
import { Head, Link, usePage } from '@inertiajs/react';
import { dashboard, login } from '@/routes';

export default function Welcome() {
    const { auth } = usePage().props;

    return (
        <>
            <Head title="Bienvenido a Fleetly" />

            <div className="flex min-h-screen flex-col items-center justify-center bg-slate-50 px-6 dark:bg-slate-950">
                <main className="w-full max-w-lg text-center">
                    <div className="mb-8 inline-flex h-16 w-16 items-center justify-center rounded-2xl bg-blue-600 text-3xl font-bold text-white shadow-lg shadow-blue-600/20">
                        F
                    </div>

                    <h1 className="mb-4 text-4xl font-bold tracking-tight text-slate-900 dark:text-white">
                        Fleetly
                    </h1>

                    <p className="mb-10 text-lg text-slate-600 dark:text-slate-400">
                        Plataforma de gestión de flotas, vehículos
                        y trabajadores.
                    </p>

                    <Link
                        href={auth.user ? dashboard() : login()}
                        className="inline-flex w-full max-w-xs items-center justify-center rounded-xl bg-blue-600 px-6 py-3 font-medium text-white transition-colors hover:bg-blue-700"
                    >
                        {auth.user
                            ? 'Ir al panel de control'
                            : 'Iniciar sesión'}
                    </Link>

                    <p className="mt-12 text-sm text-slate-400">
                        © {new Date().getFullYear()} Fleetly
                    </p>
                </main>
            </div>
        </>
    );
}
