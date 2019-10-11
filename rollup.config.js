import html from 'rollup-plugin-bundle-html';
import serve from 'rollup-plugin-serve';
import resolve from 'rollup-plugin-node-resolve';

export default {
    context: 'self',
    input: 'dist/client/index.js',
    output: {
        file: 'dist/client/app.js',
        format: 'esm',
        name: 'Client'
    },
    plugins: [
        resolve(),
        html({
            template: 'source/client/index.html',
            dest: "dist/client",
            filename: 'index.html'
        }),
        serve('dist/client')
    ],
    
};
