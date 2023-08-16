import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import react from '@astrojs/react';
import NetlifyCMS from "astro-netlify-cms";

// https://astro.build/config
export default defineConfig({
  integrations: [
    react(),
    starlight({
      title: "PortNox Wiki",
      social: {
        github: "https://github.com/KWIA-PortNox/PortNox-Wiki",
      },
      sidebar: [
        { label: "Introduction", link: "/introduction" },
        { label: "User Manual", link: "/user-manual" },
        {
          label: "Marketing and Growth Hacking",
          link: "/marketing-and-growth",
        },
        {
          label: "Project Management",
          link: "/project-management",
        },
        {
          label: "References",
          link: "/references",
        },
        {
          label: "MVP 01",
          collapsed: true,
          autogenerate: { directory: "mvp" },
        },
        {
          label: "Onboarding",
          collapsed: true,
          autogenerate: { directory: "onboarding" },
        },
        {
          label: "FAQs",
          link: "/faq",
        },
      ],
    }),
    NetlifyCMS({
      config: {
        backend: {
          name: "git-gateway",
          branch: "main",
        },
        collections: [
          {
            name: "posts",
            label: "Blog Posts",
            folder: "src/content/docs/case-studies",
            create: true,
            delete: true,
            fields: [
              { name: "title", widget: "string", label: "Post Title" },
              { name: "body", widget: "markdown", label: "Post Body" },
            ],
          },
        ],
      },
    }),
  ],

  // Process images with sharp: https://docs.astro.build/en/guides/assets/#using-sharp
  image: { service: { entrypoint: "astro/assets/services/sharp" } },
});
