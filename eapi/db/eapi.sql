PGDMP     0    (             	    w            eapi     11.5 (Ubuntu 11.5-3.pgdg18.04+1)     11.5 (Ubuntu 11.5-3.pgdg18.04+1) -    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    40961    eapi    DATABASE     v   CREATE DATABASE eapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE eapi;
             postgres    false            �            1259    41056    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         postgres    false            �            1259    41054    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public       postgres    false    202            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
            public       postgres    false    201            �            1259    40964 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false            �            1259    40962    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    197            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    41047    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false            �            1259    41068    products    TABLE     3  CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    detail text NOT NULL,
    price integer NOT NULL,
    stock integer NOT NULL,
    discount integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.products;
       public         postgres    false            �            1259    41066    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public       postgres    false    204            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
            public       postgres    false    203            �            1259    41079    reviews    TABLE       CREATE TABLE public.reviews (
    id integer NOT NULL,
    product_id integer NOT NULL,
    customer character varying(255) NOT NULL,
    review text NOT NULL,
    star integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.reviews;
       public         postgres    false            �            1259    41077    reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public       postgres    false    206            �           0    0    reviews_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;
            public       postgres    false    205            �            1259    41036    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         postgres    false            �            1259    41034    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    199            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    198                       2604    41059    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202                       2604    40967    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197                       2604    41071    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204                       2604    41082 
   reviews id    DEFAULT     h   ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206                       2604    41039    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �          0    41056    failed_jobs 
   TABLE DATA               [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public       postgres    false    202   z1       �          0    40964 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   �1       �          0    41047    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    200   &2       �          0    41068    products 
   TABLE DATA               d   COPY public.products (id, name, detail, price, stock, discount, created_at, updated_at) FROM stdin;
    public       postgres    false    204   C2       �          0    41079    reviews 
   TABLE DATA               a   COPY public.reviews (id, product_id, customer, review, star, created_at, updated_at) FROM stdin;
    public       postgres    false    206   �?       �          0    41036    users 
   TABLE DATA               u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public       postgres    false    199   t�       �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
            public       postgres    false    201            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);
            public       postgres    false    196            �           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 50, true);
            public       postgres    false    203            �           0    0    reviews_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.reviews_id_seq', 300, true);
            public       postgres    false    205            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
            public       postgres    false    198            "           2606    41065    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public         postgres    false    202                       2606    40969    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            $           2606    41076    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         postgres    false    204            &           2606    41087    reviews reviews_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public         postgres    false    206                       2606    41046    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    199                       2606    41044    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    199                        1259    41053    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    200            '           1259    41093    reviews_product_id_index    INDEX     R   CREATE INDEX reviews_product_id_index ON public.reviews USING btree (product_id);
 ,   DROP INDEX public.reviews_product_id_index;
       public         postgres    false    206            (           2606    41088 "   reviews reviews_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_product_id_foreign;
       public       postgres    false    2852    206    204            �      x������ � �      �      x�]���0�3��K*�1��&��m��W4Z`{z3�T5��}��ς%�&d��R�i����SZ��$�%�m��C���Y�����@-��d�AcX�]5�	3]X�9�Z��b�yɩF"      �      x������ � �      �   3  x��Z˒�F<��?`��f%9V�Ö��^�@K�@�>+����@lq0��*++�+�}��S���m����.���ƶj�K���}S�p裯����7���ջ.��_�V�u.���aQ}��#]��_�k������.Tc����!��.�Cf�9��Ym�z�:��Z��<T������K�^�������yy����ڟ�uU3־�E�y�BUc]�6��_T�ׯ���![�#�_{���7o��v7���7�ڭ��qC��g�~����?��E����p׮�*zP[ّ�0{��ڬ7�mc~�[o������#�᫭��]T���\������w�=���?V���]�2m�_��n��I��X���0���������Fnk�ТoH�9����V�}�/I�LV�x�����M� x��Wq��� L��v;B�G�(H����[�샫)َ�Է�d�$�>,�v������:[��hO�%�D���{�Lg�	�mF�ߡh_����k�=a�����(ZP�;`����'�]�G��0���H��<�B��0XT��;b��P�����ׁ �92�ԽV��ľ�����s����O��`���]��޼�ڶ�T������.�r�C��_��psWw���-���7�L?`o�8��n�~�_��nƅi6T�;sxx7Gc�fS��t?ݭ���c��������fܘ2ڐO'��#.�E��3UT}{�l�0D�V���C�������da����!��I 2�:���\F�ʪqg�a���F�⦧���ul�����ҍ=�i��-��&��0(Q��=�ᰠu��|���VK�Lk��al	��ڽ�"�|�.5Ӳ��o��$�U�ô��e�ކ�0�SƁ4�/�#�n�t���I�����.�%�)�@}8��Y=^����D��2Iґ̛H����Q��y�-�x�^��V`�5��2(��9��(���k]�Q�N+��Ů��Ğ�DK���7W�[D�u!�kD!�F���xk��3�֞0kև1�f���7X�5_�gH�p��0���PB���(T���������2Fr�j����PjI]��n�R
-�����З�5T�}Z��	��v'^�J�꽴��Aչ�۔�@E#��
*�X�NA�AB#2��2=�8n Rg�mg��̿��T0�E���(�'�X6ư:g����p��t�5��P�U���;t�kJ�w�mb�S$$�ks����41�b�V���}z�(e"��U�;*w��:+�=	��l�ݕw�#����B�)N�#��Us�E0I��*S	-U�x��~\����aZI��+%��u�&����K��Ɖo�н��f5�!A��iif �h�i����3���E៯(,JN;�R��R'm2��Y-dN�M"�P��۴A��G'H��׆�!d��P3r|2��9F3�;L�b-6�U6I�iγ]Th���`�&�BaN*�9�r��Ҩ5��[��3�_�;��*RE���_��-2�Ƹg��%�#�ъ��W��@G�u?�|�+�c �>)ѳ�9@�ի�.�yQ���_�q���t�D9��IjtVAP�ٖN�0�>��'K�����qq�^���p�NE)��
DԸ��]7,�t,����,$�ڷ���3׹1L6�6<a�T7~A�*��Į���2�`�	�������Yo�C"̻��)z(����օB�3��T�/S���n��@T�Q�Kf~�j���D�%�����c����q�՚�MF=��5<��=�3#k;�h>�=���1})b7�h�����L���8N}T�	�c���M�[�J-�<���c OK��DFb �eR}��(R��/@U*B/.MH���d���jie�t��wMj�J�<���C�f�%!tue�]{�U�b�&�����wߡ$ш���Q�s�ȱ��3���$9\<x�S��`q	��('MԄ�ݨA(RM�d��f����Fy�Ӷ��wL�9������᭨�S�~��w6��o�Na�x�Yp�De���ȉKl0p�nbC�����N�<ę`��؋f�#!���ګ��"�S%��<)�=6z=�CO���o��3O��;(QM(3z˂�T0gOĥ3�KH�������� (8�n�
6��:�KS��b�*�9:�bYr���.�re� �6���x�1������Dʉ������d�����,\�P��	Ȧ� O<\�%�	5�S��`٬��0bK�>h�c��֢�'̂۞�����'-
c:?B���&/����f�#�N9����Ă�ŸH�c^V���|(�{IQd�Ŝ�fe���	5X�"4��j3o����q���Nwf����$��0"!�8�L�P��G=�i�ۘ�@���<}@��C<��͉v0���r�#Q�<FM�'[2�䥕�X�_Д�)'V�p�.LML4+�aܡ�o���	uR9������m?�����eq��4K�#�9ӆ4b��zSs!M���e
����{�v1�Ŵ�q�@{�9���D�L�)'I�Dy�s�OEK�5�D��*��H���dt�&�L#i�Ϭqƻ9a�1��m�&�%�N:�0`iIDJs�C�餩�Ve�{�J��KߤL?��qj v[��q�L>;����ٸ���yd1Tl]`�E�ä���9��e���h
�b��g�׷�S�v�}b^>U�p�f�QiI!S�.<�`+yd t)�B��	Y1�G�+��%�н~p�TH�&�z����4��+��<E��cf>�SCâA$��'p���*Rf����|��lO|V��?ۮ���R治�%U�&�H����$���M'�!_�!	�&���nv������ưL��=��.Ba�A����=��[|;�M=�׳�����<���duˎD|f�I�Ʉ��G�S��t�H.`K�nƌ}���|Ll&Š��^4QH_�*>�I�KyZ�m(����·�	�sF9��m�b<i<l��������S>-O#�L��������H(�4�r���d�S�r��$���lɢm�����hf��+�b���/�n�,�K�8\r�c� g�Y��9Q����^��9�pB[�?�`6�
��~x(�)�*T��lƇx� S�>�$}�D��0("����]rg��B�<���3�ӎTЌy��h�@�H�D���*o��J����ٟ��@A<Z���3��{������QϨ����gQ��ƙ���q2օ�⃦7�t��xQ.�1��k�Vi~!�R$��2�/\��
G.���niD���bU:~��ΫBe']iY�T{w�"���/'3����҅�Y�E+9%-���6�T��%F��E��x�����tn�      �      x��}�rɒ�:�W�nVC���(� 	*�����M�*�EU&��M����H�c�6���@UfǏ߮�v��q�<��4��a�c�T'�X��u����34���^tC����6cS�zC�	?�M���M�������4��~c����/�1�M��M���Y6��u�y��F>+n^T;�����oo���a�}�?����{�����S�W����4���Y?5���.���U�_ >K����[ձ��~������������iS�a�7��ObOS�����Kˮ�X���k�u۵�0�c��6ߧXw�e�K�����~4�+W���{�V�����W�j��u����v�b�-�ÀO��fӼ�O��ԑ��Ї8�4�o~ܛF|���m����՝7%��WU�	W���F����w��Z��� [�?�Us�6��l�m-�a	Oop��W4��:�Ћ����?��-�&ܶa�䘅��Ի-#m�>>��r��/�sY,�@;�pT��>�+��!���*�*�˽W����/��?^�}<�och������[�>M�w`M�>�<���3ܖ1��}�� [}��0�->v��%��N�u������g;������������)����|Z6x��;tࣛ]�o�-\fZ[�2���Z�ܰc�S|�7�!<4p@cF����rB������𯈿+/9��ō]�`�F�.xAV5�#�ߡds�����c�s��Y�A����v��|%��c�2=�Gf���lC�e�g��l������l5A|�e����i�������~H�+,�:�v��1��^�<�]���s��F������͐ސ�;�q-m��]��/�϶�����`����}�G�SP�9�,���j{�:��;�ߺ=,s��w�4M����-%^^~)�j\���l8��2ra��Fg��Ȱ�WǯӍN��}v�t��s���p|p�&��C����0�]���ުv��Ϗ��Sx��:`�[������'�>�_mmk�	��_�5#�/� �3v��`��+Kvm�f7�gM�tw|��}�%�kK���o�0���o��N6��B�lÑ�����ۿ�~����ң�6�������w�0���%�(<����vb8�	&�����ݽ���]����k1f�/.��%��j����.�� Ƕ�WP�.�4�1�b�	�o���R��YF�2�����z�n�Q��\!a�f�����ʎ	�!En`����W�Y�}��<�^�������X���ڡ:�7���;��oo�u��?��7k�\��x�'2��pO�xLN)����ԡ�����%c�B!��n�V�dv�N�>���|��9��P]M`��|��_�g�-[��lÍ�_t1C?R�E���s5'����P[�:���p0�#2n
<tBN�M�ɟ�-���4�lU�:�L��+�)�F:��)���1��϶-s�Q+�%#�� ��k���Z���W��]@g
���U[����]���!-!�'6��Ӧ��l>^K��]��6���:3h�S�,y�=�4���
��lbx�s�W��ZY�+�ӿ^�8z߂�Atb��8OkHv�n�W�CԠ�,;)��6��(Fj���⚖YR��d�GC�NY�,�|r�΢H�W��(��a���b!���ѵ�N�i�@͖�.���ù�U������f���W���Ь�δ��L�}���K������o�m$�ѥcӴ�f��N�8m�`Rpsv�T��^Oc��l�C |~}YQd�v�=+ű�����]���E�Er��G�q�}�[�(�/8�;`�w������x��~��L�Tp!��Q
�����;Y��"����'O�D�	�QZ�M�'d@�/���b�ul�?�Ôxc�>�_����Y�;��b���$vLi��	5�@w'���gm�xH-�@�2�c)UMy��d݂��K�f	�ֈ�`3!,9��U߬n#��}��N�ء�2�\��jf��r�)�Fu��|I
>�6�k&����0�?��)z��
B�w]��3
����>M�M�h��u4��_R����.�)����e`%�U�vC1�3���1p�(� .#��@�$e�}���v�M�#����E@"���7�P_�W���#w*�|�{
c�
��)5v�i!ݶ!x�6�*��U�#�f{
\�,0/g+H>wm�X��is���M����p�N�t�fٕ��s�g��ޜ�:�L�Kd�sj�7tj.�}�$�<��bzFI�Wb3���o���8oI�~�]�g=�e#<����U�&��z�o{sp�
<8�qo���d�1���BG�W���w}��-^��� ���yWV� �;���6\��sR@#��L^ۨO w?��l�Ut�K${Q���hC��A<�3�@�3..��Y�K�#�Bau^_��(�q�4s��H�E����48�M�x����M[b� 6�ݫބ����Wo�,b8�P;�]

�b�*Wx\�3��'��	������SR�����5��5Wm��)�3(iK�)K��R��D#Onl��JxaP$����]_LՓ90��Bd�"'�0P�H]�i��txXA���[��w��x�V��P̨h<A�Ka�A\��͚%`�&ƕ�YG�� ��W	�I���q�쑫[A�y5v��(�Ϡ�%�#4�d�L���T�jɄ���[UR:�g<�����b[��!$�w`ԕ��'�(�M��Tސ��� <��:���D+��gQ�8G���A��r�0ć/�`A�[���㉮�0 ��avA,Чc�`��D,����i���w	7Í;y�cدY!!���`C� ױ��3��J|`
܍�Y� ���y%�.1�ZXHs�:��fU+8�OY�QFJ��/%�R���=� x?��7�I� ���qͥ<�����ǖZ��Ә y�T0����g�������Y����`�9}��Q>P���$ҟ�8��ꁪ
_d�f'xΝ&���k�bg���HJ�@C;��a|rx�M����=�\���_Rd��k3�w�L�t�4���  9f<�G�a닋��=%z1��v�'�M��8F7�����i*�&�\�p�A�yC���w��	�0�A|�՟'<���2󪸳ng׈����}#�>��$!�5鐼�9���K�����r�1��/"9�T{{���}�2�Ê�G�`�-6�?�dS���.R�mR�ъ�+����)Q<��B5s�VQ{Aܵ����Ŋ
6o��t�����K|JJY�'�U/����82p/p�!C=�):�h��6ήԧ�dI�;��G�^��OocOi��7K��`^���360�����٣6E�������6��C a+D���1��:��i4b�XK�Z�G�-v�?/�M��|'�]6���P�e��/F��:�p;z��ˮ:!XEP&�pP�DFZ�9������0������[S��Z�,Ľ�.�a���[=J���9a�G2��>�Ӄr�Y��)���\y abh?e#
EhV]p�� v<�%m뿦vX�Uz���;���e����N��3�'E��6����P�v����/����"W��;,��X�}��@�M,"�lJ��1!��\�@\puW.��:H����!���f�/j��J�z��6t-��c.A�80d:�g�w$~"����(#�Q��8P��L�s�T:G^� ���9EIk����Sv���+<c�4�)]�\�F�Sd������
$�-�\WE@�<)ew��?�3�b�g���9i��H��~a���I�tP�� �2���v���f�@,J���#8����A2�A�NǶ!j]�Q	(�܆~8�%�3�N���]��q1��l��w�B8��ؕ7jB����Cn�e3��]l ��x`�gL�|h��XH1<Op�7�����0#���QtVO�S��#CI���|�Lc�O��[~Ʊ�`8L�w�?V��%4����9Xr�7)u����LqY7�}�`�    H���)8k��B'����Jh�Y�!���y�1�L�>8��	kD�b�a����%��_r�z�d*^`[WdH1�����Է�2�o����Ϥ"-H'۩.E����#*\�RP�I��̗)C��Y#�b�}D_傈���E������\Ϋ1� ���m�����%7�|Ϝw~Z�)��D ���7����Ȭ�±���U��k��1�4/)k4p��;��9Ef�d%\�#�{����e.-E��}���ӠWTNEr��#�	p���R��_��l�m*�����r��ő��5����}�'���,�]ꀻ��_���(ͥ����3�WZjh�Y��8إoV�h@�L
�9�'�5V�4�T`�Z�x�5� �<2FB�%ZFL�.I	������������C�3�s.��Tay<�t�*H?�I�2[����0���-��ny��n����f��D�,��R:���NC#w��B���إ�'a�؂�٫�DF�?���X�Z���h ԅ��Z�-�D���w�����O�Ѫ�>��#d����5t��$493 �B�����Ƭ�ϘWY�x���?����j����n�R��E�
g�c3n�!4����l
���R��0����nL
�}7��:�v�\�[�:�=��35��d2S2���,>�R��ˎ)H��ŕ�?O�	ՅH���?�=V1��F>O�/�S�����s��@U(鶮�B�S�sh�ϧ�%>x��n�;.2G��W�dg���f���K��h��#f�9���r��w��=���b7V��hаU<�%��"!��kzc�2WU@�ZA+�1��}hn�S8gd�gO����M䬙묷K�&��M���Y���%TT���oy�V�(������n!�s�H��h�G��'-�3��4��822���q�6�Ϗ�f�Rf� �H�{�13d|�?߹�m�^�5�5HB�5������Q��������U�\���E�Q���j��7#�Pt�w�<��'�#�3�h���^N
�\������p���6f�K<��2/8\g�Bl�/�M%��pNG����#�m��b�|9�2�9�Q�R�G*2�1B�w���j�a�ba�����3���{�B"��c[����/xEdL���K)�eJ�{��o�V�
f�->O����P�Т��G�\XFQY�ϧߑ	�d��A����B�����8>xwI|�MY��� �˓g�Q��{�����ye�(4#h
��o	���S���_1�cb���j2��Q�]�wqg�|:��c`�N���7Р.S�9�9# �37��*�g��eh�e�����-�表����W`W���.�5��&|���
��I�(s�z���q�j;�8��J�k�J}!�����+R�zn�,P\�|��>�a� \��^�:M���ޔI���Z�`�$,`�����|����!����~p��Z3ì5y���]���B{5�j�U�w!L�>ⓕE�Y��z;���j��n�y�'��D�B�LT�U>�&����P��"��՜�8H8�*y˶)ykr�gP6+����呕u(�j����NT���v���*l`/�L�,�HdH���$�F�%PxE����r�E1=����=x�Յ���?ӾAK+���	��ߴ~]��W�Ծ[mo!�������翮��1[Rq)���F�4:i7$��K�6���b '�%�����F�oC���5��lu#�TW�����.e�
�us<�9)"��LfU�(��ǟG�X:����K�wrܕ��T��F ��Qx�L�S����S!X�q�kD�Pr$�>J_ 謬 l��qE�u�a�K����ꮉ��P�+�s��#���@{���3�,S��7��Hn�p��X����]#�"��A�����n �����|f'L���E�V0G"Ť����YT+�������nF���)��G5�8x���ᥟ/�I��0�������Ql	J��;�08��y\ ]_c�����3�"=IN�J:�7�0�zJc�<F�|�67a]_.� �jb����B���Y���!W�$��j��xn��	,�-YE�7�Ȃ���N�-�*{J��旺1K��xEx��'ԯc���u�"��" � eac�E�,�B���I��?�(�W�B{��11�s���x�:����i����J���a�a��B��Z�Vf?g�/!�+��+볋� ���8�&����<��_V�m�����]��ĭ�`�YՊ8�K�}��A�\1����U����ao� c�(8��+���k����r'.+O�:�/u���j� !Z�+�[p�otHܢ�(��5�Wrg� Dҡ��C�<��\���o�;����'�|Z8)/P�`�C�Lɱ�LWM�&��.yHds|cű��(�q��-I���b�JD61KØm&��l�l�EDQiI���$^��f��^$7�'a�v�z�F��ѷ~�?�!ڮ�@�ݴ�C}v6X����I������/%���~�n3
?6��:��HL}���L�Y����syT�]=Ă��˩��c�"0�Dqp
;���!g����)���^p4�ț�m�^u��ڲ���� }C¨S��*�%�<_�R�4ͿA:����?�
W�{�R-A�$�GP�'
��.�s^V�'��)��^��שa�O����q3=���x����KVz|���loma�A����Jg4qD�	f��k0�r���u�_E�	~}Wp�]�u3���eFe��K�R8S��w�t��e��I�+-j/[��	D��o,\������J/�Ъ�"f��jua�ѴԌ ��"�Pͫ"M�����i��a��C<Y�x��w�ӎ��N�����P���Vʏ\� _��*/� �n>�%rW[XW��6�я���p\Vܴ�4�}h;�� �#��Z*�58����&������.�8��U%X�v�cc�!��\�g{�f���o]��(�bl�$H%��9�Ƞ�߄I}:�M��N��5�h*Hf� �M�S�:��VJmɫ�#��l'"��ɯ��oLIK�]bi��-��<�g��g\'L$��Z�P6F��h�%�;v��˵�`reJK[DM��y�굤��	lɒM�Y$:��0�7�L�"�\{ ��*�H���2!6>���W\N��P���b�@�o�ғ�8��]Q���4��|i6�n�{��Nw�Mh�k��;��PKR�]�	���tv��(fu.�5���/��b�@l웑)s5���폐�Ō����]�8-'��ʉ�p��R�؉�����ې1;wQ���ط8:�2��i�Dʒ�WFb�|�f�)�6�	z�zf�xeKr�}~x��jӌw�^ �.u�;�\}2u�YiSn�IB��f	�YiE�4�(#)�b.�=+4X5T'E��j���*�����J��� z�h��z7�R�c�6Vs�i�c��a�2�Ȅ��]����ڣ��	�ԧ�0��'�,uH2��l&���&e���en���VJ��&wG��P�R*�uxS�+9z�;�-���]���uo���c$�;��2�a����	���g�c/*+�jI�{Qx�pP�����2��>�|��V�a�6��o2^�w���f��0*5�D���W=�S�I���P��3+�r��)␛��f\}�֢I�:x�%(�bm�.sH'�4�'�,&4����R�mE��o���<x�<[�e�$��`�Y0.iJ�O�0�c,sއ�,�n-���ó 61�!ђ�x(fD�\��Q�݊���j�Q����ݴ�T%]UF��6�9c*����C|���D������J�T��Q)g�����$������/�l�*OKpIsՎ���6��F.����gɨ��fU����R����焀�!���� �f�>f��Q�J�b
'�ׯ�)��ޙ��e<v�6�!�IF��|�+�)���{
j6^��O����q�۹2��B%cH�w������_�8���'�Q:��(P)�����@6�Sbȉ���!Ӣ�(T�ڨD��>�#bHz    ߎ�_��f�Dh�`���Ӏ��,$�չA��3x9�'�^���@x�)ѹ���cL�2\dd�M�q�#��F���Ƣ֞��jwW
_����?��*N"��Qv���g���SM��w.���j��J����""���@,�����F����U9x��:R��5I���ap2;v�T.�`��b(,Kr�Ǻ���W��`�w���Xb��|g`��V$x����-��Fn���T[��Ćd
�E1�p������I��C�����$�3i	K�(1�fZ�M�6v6��/(�
�vsǚ����$�KjwA�\��	�0� �,�G{����:�N6&����x��o[j���+� D?� >�*�d��A�l�O|L����3�����'Q�M3�A�Z�g1�xВ��{-;W4�G�:�%<�w�ɗ����������6���>*�W�%�;����_���s�v�+��j�^�j�6���U��<:�f�$	�K<e�C�S�Q�8�l���i���a�%Y�z��~܆�G����p���L�r��ί��1��m�\��@P��N+x�Ra�w ��'���t�g�#p���*��5�I���W�b^G�e�5rF�
��.�t�B�4�!����bgpIv�S��i��y"UD�F*��[4%8����X�������l�.�@�ؠ����;8\7>������p�5+y���;뫲��N
�ẜ���ӹ�ZE�Jn������C��w�݊��y����$��q��90^�X�o�st	����C?Hו�8<�Q��KE��%���"P�c���^4�9�r>>�0���\qjT�n�˅��,y�=l��g���6؊U�VU��I%��d���+w�*-�E�*���|�kJt��<�~H�8�.��u
Mw�P
�QvLGh���8�Fu���<	\)f��y гև�B���_"�	���v��0����;�aGt�^g�űỏcT�W�#�MR��$������:���U���R0&uA��qA�Kݨ�y)�;L]��9P)-uHj��R*K���^\WNw&��I��k�'�]���~R�@���t�nx���t6}ɵ?�l��s�!|�[S�N�{����h��YB>�\G4�s����H9��)��)!L3�a�R��:6��r��γ�ߴq�Сy�ιі<.��ؔ�=o�%�;���S���]�E��W�RjOI�#��<��L9�J%�P'Lz�d3�f0��g[$h����man�y�y�_u��N(����9\h�#�\D�"Y�����b�rF\�ԙ$�V�+�:X"�i�פ@EW� ��#��I{��T��Hy�N���2���JTV���P��\����7��(_�#;�?t�;���a��H/m���p2���űV2�*)� �����gR6�s_����5�-����ݯ{m�!L�ҟNN�~��mCn�k��HM�hEыӔ�8��r���Z �4y�4*u����$TN���YP��W��ȧ�\�Ԣ��b-"�HDUJ=)L*�vÔ6pLZ�/��T�mKT�p6�Y�t#1s�U{t�i���3-�
Ө����qh(+5B��m�H6%��C9��/�ރ@�AWr�P܃��SB��*T�q�Qz�1Wj�L7��y��Q���G����� ��ڐ&�����9
6�3R��hR#�d��TKH5(N駼?R�R%���lb��҃��)ó�5�%��f�LpLjᦘ-^Ԋ���5�4�,E{�2Tz��q��k\�4޷���k���
���W��:,��ZoF��u4ř�Z�R��i4��������|^��o��� �IǞ\�'�	������803����1(ٸ�h���6�^��]w?��ayW����zWy���DӘ��jXb��M���Է9��i�Md M墥�A���oᨁ�:��dlǶU#R��boR��f�YmA��l�1ɤGQB&�{���!���v��=��,����)�0�3�]d1��Ynt׎��Z��r��bF\-=�"��Y��Ji�/�ÌJ��<V���#D�6�;#�6�dQ��܄1���1��2�L�w���\�K�s�XV�>�������~��L�	���I�aj�I���±��3ͫ�4:�X�t&md��^R�C�X$���u�Ch��IMET$E�A�0	�7��+�H��,[�6�dj�u��Lɕ&����\Q�i$Ӳ����E�y��������`*L�8��T� �Ї�sFN����J`P[�}B!X@��X-�X��f���>䮗@i�#{T������A��&C��'h��q�2T_Nl8>���u;�`�8�����#G�٠�s�
<7��7� y�?ƻK��=�aQ"�g��WL��瑟���Y���7���O��v� �/ga�����8��<4+]���"�&O���)�1���#��=�inX�S���w^.�4"�u2	��L��Un~��z���	W2�P@9�r��1�8I��G�$�\��m�w�5@�Gnޒ�h�*��ӐcaK}.~�����b^fFu�Q Zk9��F屗��N���^�Vw�SL\!��S����Ƚ"�e3���/���U�#��]ut�im���IŽ�ew�D_݅��1�g
Pt�@���V��B�lϵe#� fz����$ٯ�_���W��;��*���/��O[~��HN�WYy�)�Ե"�xj��H�
V�u�`��K��d��%Ҋe����P��Ѧ��{l�OkN<{ҟ�)�mA��!�l�ȶ_8��U����׫�����Te-�6�������SS�($R�*�iPP�$�.�9��s��������JB���-z�C4�g�"�Hc��m��c��gF%��^02O�w�,�l�ٯ�:�lmi{N��NI�api��~?ۉ�����5���j����q\5tN�v8̹K�(c��d"ԐFz�ٔ:Htn�a�qo���-�um��D(�@�f%���幅���:�^����>���@1�����	[�df�=<lǈ�L���� �m�R��е��¼��
��d�?e�w*�R���vUs��3JZT�Xv�0T3�Dzd�,���!f"��(��
���N��@ .N���r��D��g�4��������k�no�̫⃄.��Z�W��`^��+s���a%�܎��i0+���E�䗂��p+w�CI���/��%U9Q�ȄӇ �Gʞ�D�����<k�_����}L�[aÍ�A�q$��L/S�A���sX`�G�L��'�R;ۮ�LJO�jX1�_�{� ��oX���S�z���p��%�� ï��,<�S�^v�M£�t�_+�9T���.��e�\)}��`��a %w1D ��In$ɝ$����+4��ɾs�S^��I&�Y彰_���Py����5㸎����d��USE�>~�2^�t9�Ed�n>�j0v���"�}H}G��[�ά�]g�+_�)F!S1�����a�v�G��J�vL�T��(�?��9	Ǵ�"	Q�6G$��Տ�6,��6Xl	�g�P��)�!W1q}2���B?m���b���{9ݘ7}J�V�csd꫾Y��[��(vq]-�����P�өj�`�6��Z����ß?�h�l�4��>�6�񓏶*��ތ��zD��j�zɺ�g�(,�������=㾤��f.���&��f)0�Gېj�	#�`�!=ᅎkn�B��/Y�y����vA��D)��ڌU�`��N�I#W��S��v��]P�B��=]����Sӈ��)��|w��\�L�.����>�U��,��8�����x�*������ϭ�Vf�>d�&tw(�X��{x��w�����S ^'C�5�H�Kz�d�n��w�=&I�'ŉ��HH�FHQ���ʮ�:���bMg�d��:�0(�CMQN���Xs�������i���By{2���u�h�@d�E�K.x�Ho�L��?%�U�ػ)5��|I#��\��c���F�Gȥ���ҋ2<q94Q�|�Ĝ�z/6y�*w��N�CU�k�Vr�I�6    )b���4mΥM�w�/2�X�_�a�A�_�͍\&}��� ���m��Ra�BP_6�p__��n�s�.a�;mJ ��&I�������T�z1y|��?��-�����=���ǒC�1Ԥh��1�z�݅��/�#�L�J��q2cX��E�b}Z_?o���I��C~	+Er%�@fӍ)�9V�8Bd�킀<�hZ���VzK���m|�7a� m�]&{�c�|��P�9b�ų��I�g5WͰ���}����+ɦO� �e�O�1=bt2$��R=v�+k�|^�������)�j9#�OE�`����3��`����;�D!f��^6�В����i�G��ױ�`q����IA�Ф�#�W�����'z��TVJ]p�<l�V\��}���^�Q!mQ�7V:�#����2
R�tY�U��9��WM۩�]ߋg��Ә���_�b�u����L,�i�h�Q�CS��d��58n�MlQi���!yT7�l�a���'���boT&N�r����l� �?!29�g��Q��.���z��y�]�E�� Ҝ���]ho��gL�-c�K�f�I/�~Cq���a�@*��-I��4n�hm5j9��f�pWb���mG,��w����ZG�!'��ZH������y+(�D�s�Ô��'��*�iX��d/����&<�W�&N��2TT=.��40�#�h�����W&�v��A��׭�q�w��-��������m�+>V����)��V��8�5z�ca�c�����(�������1hߕ�b�����^u��8x�_u��玲����@�}k�f[�Lm6]����'�&Q���9��y�Ǖ�~)�	�djSXJ��z����Һ[���HC���6�y�H��:�3�ɫg��.F�0E�TS����,Y�K�m9�#([h�;q���l����q>6��棑$8V.ws��.�%�bT`�v�v��B��r̩�*/���R���ag8���IG�#N^��V�FoW�1���\�2�z��{❭]��9����r�j�ؒ	� 2�^Ȝ唽����ɐ�PqL�Ad�ȃS���x�zy�hc �X3!d��D;����؁�
����d�8�㮷E7�_x��Į��Cb�k��q.�"ӎE:���	h��G��l��wn���ś!��~ͤ�l�b';*0UC��7XD�
�(v���\H�={R�TJh&� @˚i/5ʿ�ZN<_�s�09#:���V�-��o�tṉ�����D�n�D-�'7�>,m�O͝��J�P���nZ����:���E���W�#�����E&��Q�9/n�6���Q03�;���?�\�3b��@'R\�a^�!��Xj�"�����A��U���[u�|�g;)�K�d�<u�ZnSjӒ�m�?I6E����1�t^BE��m��6�:H����՚ւ:���,#%'2���5�����5�0�T=�ҾJ5/ʼ�Q�&�2a����CPg0���٦������bᝄ�j�=����<i~�-�4,���Řd��|ڔ�L���{�Lω6ƫ�8�Y�i�J�I���ޮ��=Nd;���=�e/(c*��*0W�x�s��\"��ɽw����$
�j���v�I�<4�	,?r-zǍ� ܀�+�!�Eƣ�(*
�w)%
�?��kD#�o�YZsDհ�}5s��ب\gy2�B�xh6�~J������M��A)`��ceN����	R�Ms���I���Ӕk������-�u��V��P���$)�l��+�1�6�8����`�_�+�~�d�&��K+#�6�P+�%So��@[\��Z��Q8�)o�pR��Rp�I�[�vE1���������l��wn�i9��&б�jM�GE������(	�T��L���"L<���"X�y�Fٿp��Ex¼�avs��:��XY݊5_<m��)�wo��+n�@�/�Zu�ќ�
h�
Ŗ<y��pa�z���i��ih��Y)�wH��
��v��LLf��k����*�<DM%���ˬ�1�7��OY��-1z�s�Ydb��G{���j~iR���b'����O�Zt�v�ia����Q���33-�N�JfA�Ɛl��y]�bShs*I����N��������X
���j�5�̧A���n�����W:��X�T�@W>y��T<22��x-d��sOwvv�߀^�O&ݙ�/�B���*1ץ��-+ѝ�g�|��K�H�Z��T��0V�`a#l�x�F�i<H��]�4�Z�������VD��I��մ�e�cc2Fz�9p��B.rMO7����g�n��(O<C,d�-.�=�ۿ{�=N��d��6�'.�HC�&?�a�����L�f�Xj�$�D�E��"���c�Ld^�%-��N�Elw���U��L�wK�O��}���fk~�j31y>$a�TU&�Z�k���]�IǶI�Ս�ı�t4�th�m71��G�^�h����W�I> �P�л@$%�K�����kAx25��<O�Z�����F����$���YRnsв�����I�
�0`�Ɓ��|��5��[�Cd�}�mE��448B��x�Z�X�٤GF���G��)1BR$��Wܤ�3��&�R(�N2Ӿ*5C�Z�!*>���	�rFH�@O;��.�2���ߐ ҇�:먕���ʄ0���Bi9=!�I�A[��Bf�:�
@sҤB$F�7���e������woz��,pq�{��[T���YnU�SI�2���Y�n�lNrKC9<�!�q��-�IJP��LTЂ����D�dg5v!^ǆ�[ȋG�g3�ʳ�Z�V�_�D ĝa�UJ�T�U�c7�d����by��g��߽�6�o�,|�y�J+�&f��s%P_Y�N-R�1�ъN&�G��,�Wv����:d?/ycB�iP�w,��Tr$�}��ߥj�9�R����g=%,�Tl_��K�	�`�@F־/�f�(� �|�ʋx׎���l������%��Y���8e:�A��S��z�e�C
��p

�0�Nrd�jY���7��D�c*M�V�wﴇ�HB�ծB��oS�ɋ��4{�hvR:�Ԡ��h6|T�T��`��w��*�h�B��W���iq!I���/N�A�g]�G��B<O��ʒz��o�n�W���P۸i�T��# ���HЛ�i�dj�(��} &��f�oxW�k��-LR�[����&4���dQ)3�c�,��
��H����y�&�o�KA�M7PC(�d��^�������m����4fB[i���t�Or���g����x�^P�I��x��>9"�?�Lw�����]�LI�-�`�^U"n&u ��Z
�"��jE>?F�mL��&�S�wՖW��[/a�*nf�U���K/���a���#co���q�U��f�DMg���Xǖ{ca��#�Ī��U��I&=��&b�=�K�X#�4؉�n%qj�L0��B�F ��Nn��4�N`&�f����&�C�Z�u#NG�voϩ���M~<A"�d���MjZi	B���^U�,ۨ����RE�o`uY3w���Ԩ��i �l��9�Yϻ&r$<j��%T`Qmkq�K�!���:�/��R�Sp/�v�dwI�r�؎~�`�|�j&�ns�lt��,ܸJE�9��N�E�$I��8+�Sp)r{�H����Q�,2f$?�y�D!����Sa%���SA�ݛ���E�4�<߉σR;#c��$�KO���?�?��� 2��Y &��tj�^A��<��>��\�@l'�� �]j��-�����5��"���(،�9e��l�38��'���ypz��4/�ؒ	�7�ABd��J�2V9�a�6�4��Te���Ͻw���3L�T�h1:Y#1	.�V]d1����YF�Lh�L��z4���P85���M�:��TV������y���Ө#Y��d6�@��E�萊0�)���7a)L��+]��"ˮK*�C�Nz��.Zi�tM��C6�A�[7i�]�����|sxF����oؿ[��j{��bQD%qb���3�R�D��S�T�ѧ(=���ߒ���7��;eH@�2x?UXx*m�qGUH7�s�� �  ��)��\j拟$��)#~H���Q�:y$I����=�a_f:�(P�^��*��ye���-�F%]��뗿BK�d�<i���i/�s��Ǭ:���<��`��_��Hc��Ȝ�o#ܠ��MF���\*�uP�<�Gq�X�ԉ7i��tPgD��6k��v��{������z�&6��~�ypgQ��Kا�.���#�m,���f��Z�4NJ5̴j��R�:�h>^��L�n0�8��fS�x��vg3m���	�^��tC]��8Ri����24c�#���o>���@���\^���� H�'d����|�����:��G�Z��7	�YL�ae�$L"�0������Y���4�|�N��C]�_��g���~#DVԛ�g��M2��Y;�[���Cjҳ��r�'�:���)aGk��[I�u<�Z��$������I#����
�I�\�׎d�>��ʛ����h�?W�����R��nS�BW���I���u�c�1,��] hǂ�cޠ����$;��К�J��g��+�&�E��Ho
i���$=U�� :���Qᓉ����-:Q�1f)�zqG�/�G����~��:>"-�z���9j�r�n�L����C��̾��$S-�'�I�41��mG�6�J�yB|�R�{@Sr�hH�;�P\�K��U�?ر��@�}X��m� O�
����nc��ɦ�P����b�+�X�V����G,O��߃L���E���)_�T>v�_�UZ#K�~E詹1M��t�9ޒK(�da�	OXd괣�l�{�E��`+��Fq�	c�E�،�	}&5F/&����&��9��RJ�Uf��Pr��O��F��"i�%�oF(�1�e]�0w�Lp-LZ$U��yi��_��,�o�6gY�'+�����z�)��z4��H� ��wn�!K7U�>�#Mp����`u��tȖE�چic�|�������w�S"�?i���Fw�x��Ŷ�e��ʖԟrɧZ
��9�W��Qt�2,�"�)|e��ٳ��d��2	2"�H��!��	�&��!���JrIhp�Z]���լ��zS��^�e�HݹU:j�Fk���t�${Ĕ^��`.q���'���86�c?�7�����W>�Ij�]��}�*6M�U86�ޛ怜�Wud8�ZSE#���1���k&�ͻBB9��$��%A/�bo�Ss�p�]M��0ӫ����;���9�A0S-��f���l��1���1�H}����� �ˑ������w������hHM;ob��*v����Z�Q����0��]GT���7�2��nce�<���kg0��k$$�x��`�Z�<�!K��C��:�z<���@��%�0Ys��?F'5HERv�$Vb�'Hf��|r��GJM띷�Yp�Ti��){Y��˘3��EC�3O<H�G����` n�O��t��*�X2+�U eZ�h"���\�<O�U AĽ	�Z��3-(�XEvu��v7��I������0�k�A׵΋���Տ�j����~MS�(�ά�n�;�� {�2�����V�>�������� q���:7[g�K@.7m� <$��z	� U�9)W�!�;�����Y�"�`M�_�˥�nU��.9�6�
}G��g��4��C�o���	d���9!���$�GE��2i�d���DS4�bsٽ>@���fy���q���r�{b�͓^�*�dܬp�_��4o��	���3����q��gU�D�@�BKD���x*���.(�;����~��K�|0n���
��C�DL���fR4� �w�!��1��2��c�@f����_ �S$a/5�2J\��)c�5�B��E{v�ՙ��?$�����IEE?�������Hp7L�OJ��N~V)5|��r���Jd�^w�^���j����t�a�f����4�\�'t�;A)�?�0�A�S�g��l�"*�iˇ�ެ�E��w/KL�}hn�W}�-؀���>;^W��f�}L^8�$}�����s��d��F�����J��������
�E�B4�θplH5S&<��f��V����h��p~�&\��]�J���c�]��:kJ������%7N�����n^F+*ɳ}O*`�LN�E�uҥ������?��� ~��{�)�i\ލqz_�N�[������S`G�A!O�2�k��VzQ�z�W,\l�M��2]��h���Z�ž~�Ʊb��Fk4�y�oƬɂ��hf���ap��c���\��P�K���v�?���1�Ʀ�J�6Ky'2��b@m�v�<�M*#F�.rEM��T�����5�#��-���|f-X�c4U�-�p����}S]KS������Ϯ�))�f�s���p$���ʀ��7W�ɚҤ��(�<:"��j��+R��ٜh�-���i�}O��"p(	_��$�eӂ!Ϊ�;ļ��B��9^3^CY�qt��y�H]��|���=��(0�=cU&->�z
-]B3�9�0�C��R���6�?�C�F
�_��b�m�	y�d���L�^���WH��n�nKl��;DT^��<㹓R�fp�
+E)��x�)IuwC')狘^=H��bRn?5P�ɢ�,+y�m�m:�s��t�������p#�ăd%���𷙨�ھA���4�h.�Vt��w � ��~V�zo�q6��v�q�8+r�l�I��ؐjt� %=6�K��t�7h��j�u*s�)��zy��,�h����$G�F�=;;H�J�g.�.w��{XmX%`�y��gP���D6QJ8!�p�D��$Y�;��A�br��=�a����փ���RsRg�$�5���-7�� �;&�g�m�*<�S��+��C���lI�~v���*`��./M�1���޲��t�{Vnq%j�60
�RϼI����+�}3�8 �jy���m�:��86���K�OB��L#M���`Ka�Ϣ���C�7������ܢy�F���Qe��Sw��Zʆ5Ӑ��Ɨ\��~��e�(u$�Dx��g��e�Q��Q���ϫO���m'V$�#J>u�#���:|��2�K��,�[P��	�OM��Ʌ3L�Z�u��IQ�)����b��?�Yw�� ���|v��� �\dꏫ���z��д�9��3�Ks%8��=��"#�]k�SZs�hL�8n�� ����TJ������ޑ�<'�E�������[�F�>�Q75'>�U ����1�m��Gf�l+�����n؍;���t��5����ߋ��_���      �      x������ � �     