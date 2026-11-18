import { Head } from '@inertiajs/react';

import Header from '@/components/landing/Header';
import Hero from '@/components/landing/Hero';
import Platform from '@/components/landing/Platform';
import Product from '@/components/landing/Product';
import HowItWorks from '@/components/landing/HowItWorks';
import FAQ from '@/components/landing/FAQ';
import Demo from '@/components/landing/Demo';
import Footer from '@/components/landing/Footer';

export default function Welcome() {
    return (
        <>
            <Head title="Fleetly">
                <meta
                    name="description"
                    content="Gestiona tu flota y conecta a tu equipo con Fleetly."
                />
            </Head>

            <div className="min-h-screen bg-[#F5F7FD] text-[#0F172A]">
                <Header />

                <main id="inicio">
                    <Hero />
                    <Platform />
                    <Product />
                    <HowItWorks />
                    <FAQ />
                    <Demo />
                </main>

                <Footer />
            </div>
        </>
    );
}