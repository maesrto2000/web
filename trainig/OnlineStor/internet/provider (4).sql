-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 22 2022 г., 19:35
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `provider`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id_news` int NOT NULL,
  `title` varchar(99) NOT NULL,
  `about` text NOT NULL,
  `img` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id_news`, `title`, `about`, `img`) VALUES
(1, 'Повышение цен', 'Уважаемые абоненты!\r\nОбращаем Ваше внимание, что 01.06.2020г. закрывается линейка архивных тарифных планов.\r\nАбоненты будут переведены с этих тарифов на действующие тарифные планы в Вашем населенном пункте.\r\nДо 01.07.2020г. у Вас есть возможность выбрать Тарифный план самостоятельно и активировать его бесплатно, через оператора Службы Технической Поддержки\r\nпо телефону: 8 (812) 339-60-00 СПБ И ЛО, 8 (813 67) 31-331 ТИХВИН, 8 (813 74) 34-045 СЛАНЦЫ\r\nСтоимость пакетов телевещания, услуг по покупке и аренде оборудования остается без изменений.', 0xffd8ffe000104a46494600010100000100010000ffdb008400090607121210150f1210151615151715171715151518171615171516161615171515181d2820181a251b151521312125292b2e2e2e171f3338332d37282d2e2b010a0a0a0e0d0e1b10101b2b2520262d2d2f2d2d2d2e2d2d2d2d2d2d2f2b2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2dffc000110800ad012303011100021101031101ffc4001c0000010501010100000000000000000000000203040506010708ffc4004810000103020105090e040602010500000001000203041105061221314114325161718191b1d113162233345363728292a1a2b2e2154252c107234362e1f02425c2445473b3f1ffc4001b01010002030101000000000000000000000001020304050607ffc40033110002020200050400050304020300000000010203041105122131411332517114223334614281910615235225f024d1e1ffda000c03010002110311003f00f679647176630dbf53b5e6f10e1280370c7f99a1e785fe11e6beae6401b821f331fb8dec401b821f331fb8dec4025f4508d7147ee37b1011dd045b218fdc6f6201229e3f351fb8dec41d10e361876c11fb8dec4e805b69e0f351fb8dec4274382861f351fb8dec420efe1f0f998fdc6f6200dc10f998fdc6f6200dc10f998fdc6f6200fc3e1f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b821f331fb8dec401b822f34ce66007a404025cc747a5a4b9bb5a4dc81c2d274f32024b1c08041d0500c500f003ff00592ef78dc0e6161cc8092801002020cafb94052e378d083c10339e74db601c6b4f272e353d793a385c3de47e67d114f0e564837d1b48e2bb7f72b4a3c4a7bfccba1d2b382d7afcadecb1a7caa84ef9ae6f35c7c16d438856fba352ce117c7daf65953e270bf7b2b4f15ecb6239154fb339f3c4ba1ee44c0783e0b3a3038b42c4ae1b50aec71b5276809b1b16da90848eb64076a0148010020040080100200400801002004008010020040080100237a00801001405054e2c607ba102e1a74723bc2039af6e6405be1de263f51bd4809080101c280af51e094617298ffc97fb3f485c1ce7bb59eb385ad63a2a8ad33a220a0e9dc4952a528f62dd1f81e82ba566f6470e427a9648db35e4c33c5aa7dd22ca9f2a6a1bacb5deb0fdc2da867d9134ace114cbb742ce9f2c9bfd4848e36907e06cb663c4b7ee468d9c126bd8cb3a6ca2a67ff5434f03816f5e85b50ccaa5e4d0b386e4c3af2ecb38e56bb4b5c0f21baceac52eccd29c270e924381c46d56d141c15053a0d7c8e36a78420e9e071b334ed402c140750020040080100200400801002004008043a4035951a6fb31d7c8dee81c6a77a1d7c0a6ccde14d6c756380a03a80c5e50f94bfd9fa1a80d661de263f51bd4809080101c280af4f017730b94be52ff0067e90bcfe6feb33d6f0cfdbc4aa72d43a220a12849529b2c76389ce366b49dba013a3994a839762b3b2305b7d06dc384272b4b6d168cd4bb310546fa6cb9c2a7410472b9ba5ae2de424752b46728f6644ab84ba4922c69f28aa59aa52789c015b10cbb63e766959c2f1e7fd25ad365b3c78c881e369b2d987106bdc8e7ddc093f64996b4b9614cedf1730f1b6e3a5b75b30cfae5dcd0b782e4416d752da9712864f17331dc41c2fd1ad6cc6d84bb3342cc4ba1ee8b2582b2235fb7716d99dc281698b6d4f08e840fa0eb6a1bc88058783b500a40080100200400801011aaa7cd074dac2e4f02aca4a2b6cb462e4f48c4633954eb96416007e73acf20d8b957e77881e870b84a6b9adff066aa318a826e667f4d96a7e22c7dd9daaf071f5d228ed2e5655446fdd33dbfa5fa7e3ad65af2ac8f922ee0d8f72d2e8cdf64c6534754d39ba1eddfc64e91c63842eb537c6c4794cfe1d3c4969f55f2695aeb8bace738c6650f94bfd9fa1aa364e8d5e1de263f51bd4a4824a004070a8057a908c2652f953fd9fa42f3f9bfaccf5bc2ff006e8aa2b50e889285849424d1e418ff0092ef50f585d0c0df3b48e2f1a7ff0012fb2652e2eca9a8752cd031c0b9ed0e0348b13a6fccb62372ba6eb92356dc5963d2aeae4fe8a56610cdde694925b9c45c6836b5c69e1d216aaa57afe99d37993fc1faabbe8818e51b61a87c4d24869b5cebd4b0644392c703670ae77d2a72ee25b85c869cd50b6634d8e9d3ac0d5ca54aa5badccb4b32b85ca97dd910d3bf33ba661ccbdb3ada2fc1758d572e4e646c7ab0e6f4f7d464a87d4ca98929f44a7b12513d7661c53ee4ca6c5ea23de4cf1c44dc74159a37d91f26bd983459ee8a2da9b2d6a1bbf6b1fcd63d216cc73e71ee8e7dbc06897b1e8b7a5cba84f8c8dcde31e105b30e2117dd1ceb380dd1f634cb8a5ca2a59354ed0781c734fc56cc322b9793996f0ec887ba05931e08b8208e11a7e2166523524a70e8d68704846d53dc8d791c15054e88e5f3b1c6d48e05037b1c6ca0ed402d002004041a9a3cf0e6b85c1d62ea1adf465a32717b45354e4940e1bc2df55cb5278553ec746be2d910ebbd997c6724648c17c473c0d6db59c39b6ad2bb0651eb13b589c661634ac5a663aa16935d7a1e8ea719754180e22ea7ab8a50746706b870b5c6c6fd37e65b144dc66994e218ab231a516baf83de295da0aef23e64fa74327943e52ff67e86aab45a2ba1abc3bc4c7eab7a958a9250020385402bd484617297ca9fecfd2179fcdfd667ade17fb745495a874449425092858d26410ff92ef50f585d1e1fef7a38bc6ff457d9330eca36bea3b93a1635ce739a246819c0dc817b8fdd67864a9cdc5ad3f9356ee1ee34fa8a4da5e083414af8f140c91d9c7389cefd408b82b1422e393d4d8b6c53c0e682d2ec4bc6b06a79a77bb75b58fbe963b61b70acb763c2c9b7cdd4c3899b755525e9ed7c8aadc3cd3e152465ed7dded376e90417b54cabf4b1daee4557fe233e33d68ad61ffa73ff00cbfbac0ba621b524ff00dcd7d0ee47e02c7013d4005aef06363b5389db6ea57c4c75ae69ff0062bc573e49fa753eabbb2aa6c358fc45d4cd19ac3296d86c038160955195ee26f432670c156befa2365361229a731024b6c1cd275907fcdd5326af49e91b1c372de4d3cf2ee47fc225dcfbab34773bdaf7d3a4e6eae0b951e8cf939fc193f1d57afe86fa95fad61d3d9bbd84b91ad77262f6b684286b45bb8e43532466ec91cdf55c4751592364a3d998a745562d4a2996b4b95f591ff543c703da0fc458ad88e658bbbd9cfb782e24fc6997149fc42d92c1cec77ec56cd7c43e51cebbfd34b7baa5fe4baa4cb4a37eb90b0ff7b48f8ada8e5424732ee0b970f1bfa2ea9eba29379231dc8e07e0b34669f939d3c7b61ee8b248711a8abecc2fa771627770dd3636871b53c23a117503ad98141fc8bb20112c40a9e9e49db3ceff008838100d354c6d88204806dbe80ef8ae5e663e973c4f4dc0788352f46c7f460b08a174f55142d17bbda4f135a4171e81f15a74479a6b47a8cdc854e34a6fe0f7ca41a095dff07cc5e9f5329943e52ff67e86a9d94db5d0d5e1de263f55bd4a0b1250020385402bd484613297ca9fecfd2179fcdfd667ade17fb745515a87444942c849424b0c0f1734d2190333ae2d6bdbe2b671b21532de8d2cdc3fc4d7ca9e8b6872828dafeebb8c878d208b5afc3aff0065b51caa77cdcbd4e7cb876538f27a9d08b418b89310153290c074693a1a00b017ff0075aa537296473cba19efc375617a50db656651481d552b9a4105da08d456be4bddadaec6e70f4e18f0525d4b988ffd2bfd71ff00d8d5bb16ff000cce6c92ff00745a2764fe1ad9f0e6b1e6ccee85cef55bac5d64a2ae6c7d4bb1ad9f7caacd6e1df4458718dd188c2c8f4431b88601a01b348ceb752a2bf9ae4a3ed33d987e861ca73f7bee3784c77c5e676c63a57741b28ae3cd912664c997fe3ab8fca4339540d4c14f52dd2ecf7c4ee5ce39bf107a54e4af5a3192fa1c324b1ac9d53f84cb8c558d187cf48dd7046c279459e7a8acd674a5c17846863ca4f2e173f3232d915441f51dd5fbc85a5eee0b8d57f89e65a58904e7b7d91dee317b8d3c91ef2e82f2e236b9f155305993c60f211fbd88e856cd82da9aecca7059c942554df58b22d7e1b1b70f82a40fe648f735c6e6c402fb68d5b02acebff863232e3655b666ceadfe55d88787e10668279c3eddc00245af9d70e3af66a58ebab9a127f06ce4e77a3742bd7b88b5386c8c859506d992121ba74dc6bd0a8ea718291b1565d73b5d3fd4886607e6e786bb341b6758dafc17470fcbcc6c7ab5f3f236b7f0477155eeb6664d78121c41b8241e224298c9aedd04ab84fa4922c69329aae2de543edc0ef08743aeb3c726d8f44cd3b784e2d9d2505f68baa4fe23d4b744914720e11763bf71f00b6639d25dd1ccbbfd3343fd39345f51ff0011e95da2464919e4ce1d2db9e90b6219b17dce55bfe9bc9afd9a9234f876290d4373a191af1c4748e51ac2d9858a7d533897e1dd44b562d16314c4722b9ae4bba02bf17a56c8c746ed4f6b9a79c5bf75592e68b4ccb4dceab14d7865264ae4ac74a2e0e7c8e033a422da381a3605871f1a35ad9bdc4389dd95a4fa2f8352c6d8596c3399ad18eca1f297fb3f4354ec866af0ef131faadea5049250020385402bd484617297ca9fecfd2179fcdfd667ade17fb745495a87444942c849424958761b24e5cd8c025a2e413659ebaa56ed235b232a18e939f9209589f536975ea0f6102e4100edb6b56706bb9119c64f49f61b2157b2ea644c5ee97e6773cf39a7496df46bbea56e7972f2efa18fd08f3f3b5d4931e31336034c1f68ceb1617d3af4eb578e44d43d3f062960d52b55d25d46f06aeee133262dcecd3a81b5ee2dad4e3dcab9ec9ccc7f5ea75a7a2d30bc72264f533bc381983f30017b171be95b14e4c14e527e4d1c9e1f6ca9aeb8ff004f724e45e25088e48677801af6cacce36bb86b039dad3ceb2e1d91516a5f660e2d896bb233ad775a62b27aafbbeefb9f1b1b88e8781f0b2b51673f3ff246663fa0e8fe1a1cc1e2820c38ee891d1eeafccd692e0d1ab458ecbf4a5318d757e77ad94cab2dc8cbdd2b7c82717a389f8686c1389853baf7dad0e26e08e72a6d846542517d89c4b6caf3b76479798e36a69e3c2e9b7442656b9ceb069b169bc86e39afd29cf5aa62a7d47a57d99f67a32d35ff00e040fa4fc3eb1d4ad91b76b43db269b1b1b58dcf0f0a98fa7e8cdd6ba094727f19547235d3b68afa9a27cd43450462ee7bdf6e01c24f000151c1d95412f26cc7223466dd64fc22cf1a30b30c9a9a1d2217318e77ea79d2e592ce48d528af06ae14ad9f1085967f5755f5e08b5d5d1c147461f44c983e105c48b10406db4d8ebbede051292ae114e3be85e9a6cbf26de5b795a6670d0c2fa09eac30b5ed9c3582e6cd63b33c1b6a3be3b160e58cab73d793b2b22faf32ba37b4e3d4ce15a88ee887292e86dc8591230cc464a795b346e20822f6fcc3683c2164ae728be86a66e2d77d4d4d1efb13aed078403d22ebbcbb23e5535a935fc93e9cf82149516e603ac203a0203a80c5e51794bfd9fa1aa344ecd5e1de263f55bd4a4824a004070a8057a908c2e52f953fd9fa42f3f9bfaccf5bc33f6f12a8ad43a220a1284942c69f20c7f326f507595d2e1dd398e1f19ed0fb2af26f0735125dda2366979fd961c7a39db97836b3b2fd08251f732ff2c2763e8a37463c02fb3746c6e70d1c5a16e66b8fa2b97b1cce15192ca6a5df4545363f4ed6358ea3610000e3a2e4ed21608e555a517137ace1f7f33946cd7c0ce55e171c463962d0c945c37f4ea3d1a557329506a50f265e19953b375cfbaf226b727b32899561c49362e6db4006f623e1d2a6cc6e5af9c9a788fa994e96ba7c9514144f9a411305dcebdafab469375ab541d92e54747232214c39e7d909a9a19192980b7c307373469b93c1d2a270719726ba930c8ae757abe06ea68a566fe191beb31c3ac2b4a9b23e09864d13eb19aff2861af23512390f62a3e8fa7433b5197b91d9aa5ee0d6b9ee21bbd04dedc8ace6df4d910a2b836e2926c958662cf81b231a016cadcd7037e3d238d5ebb7922d330656142f9466fba3b5d8c774a5869732c2224875f5defb39d5a77295692445383e9e44af4f7cc3f85e251c745530389cf973737468d16d655eab546a943e4c3958b64f2abb23d96cb88b28a2830d8db1b9a6a335cc68db1e76f9c79805b2af8574249f54735f0db2ecd9392fc9bdbfe4a9a477fd4ce49d2e99bfe4ac5196f1a5beecdeb63ff93af4ba68b8c5f13aa82928c411974669d99ffcb2f6df3596b9d9acad9b2c9c211d2df439d874635d758ee969f374eba32d1d5b7f0c9622467baa5aecddb6cc6e9b7282b5549ba5efe4ed7a3ffcf8c9765133e56aa3ba841525d0db90b21b7a95dcadbec67d114fbc6faa3a82f42bb2fa3e476bfcefecb0a6dea9318ea0040080c5e50f94bfd9fa1a80d5e1de263f55bd4809280101c2a015ea7c84613297ca9fecfd2179fcdfd667ade17fb745515a8744e1425092858d4640b6ef987f637e24aea70e5b72383c6e5a50623286b594f10a180ea1fcc70d64ed04f094c9b635c7d287f72787e3caf9fe22dfec231916c2e9bd61d4f296f5c7896c4d2e2167d15582e21044089a9c4972083b468b2d6a2e841b5389bb9b8b75af75cf5fc16596ad73c43335c0c2e166002d9b7b683feec5b399194b9649f4669f099461cf06bf32ee686a2cf6fe1e76d3023d66ff00a16dc9ed7a5fc1ca86e13fc42ffb19ec898c441f54f1a9cd887ace7006dd216ae24393f33f9d1d3e316bb75547e36c4e3115b186ff0073a377ca07eca2efdd22f8b2df0d97f1b2c328b16ae86a1e238c98b45896670d5a74859722dba327a5d0d5c1c6c4b6a5cf2d4beca4c12263e8ab657b1a5c0120902ed25b7d04ead6b05494aa94a47433652af269845bd15193f48d9aa6389fbd7120dbd5275f305ad44233b52674f3ee95544ac8f745850e4fb26ab9e9f3cb1b117d8ebd0d36d2b3c71d4ed709764695bc46caf1abb75b6c8d8c6071c311963ab8e400819a37da4f05d45b4a8a724f665c5e233b6ce49d6d15d8ae172539687dbc36e736c6fa0feeb0cea957adf93771332bc8debc3d1124a778609330e638d83ade093c17e1558d6f97999b30b61cee1beabc0c1711e0e91c22fa39c26df62f1509fe65a65951653d64203593bb35a2c1a402001a8691a02cd0c8b23d36695dc2b16e7cce3d7f8234d8dc8ea77d33834b5f27752eb7859c6d7038b4050ef93838ff002668e0571ba36a6f696b4549588e9210e525d0d942c86dca5772b6fb1fd1f4453ef1bea8ea5e85765f47c8adf7bfb2c29b7aa4a0ea0040080c5e50f94bfd9fa1a80d5e1de263f55bd4809280101c2a015ea4230994be54ff0067e90bcfe6feb33d6f0bfdba2a8ad43a224a16424a1248a1c425849744fcd2741d00dedca0acb5df2adfe5305d8d5dda535b22bdc49249b93a493b6fac954eeccf18a8ad227d6e3064a68e98b00119043afaec08d239d6c4efe7ad43e19a7560a85f2b53ee5832bf0f91a3bb53b98e000bc64d8db935f38baceadc692fccb46a4b1f3ab6fd29ed3f9138ce3514c61823696431b9b7275db5745ae96e4466e315d9318d836d519db37b934c72bb1a67e26c998fbb066b091aac6e0f5fc15a57c7d7528f6294e14ff0528c975ee39961551c423821702dee8667106e2e5f9db397e0b2654d43518fcecc7c3299d9cf64fe3487f1e67fda52bff5359f02eed0972ff9e322b8926b02d5fcff00f447ca8adad6544ad8cc9dc8dac03039b6234db41b6d51932bf99e97432f0fa30e5546536b9bec464854f71a1aa97343b34ef5da8f82058a8c59b8d529689e2952b32ab82e9b1ec9cc7619aaa36ee189921bd9ecb5c1cd249d5ca39d5e8c884ec5171d331e7f0fb28a5bf51b5f02726c838856176afe75edb0679ba52dbba6d9399bfc1d3a3338f525235a1d4f3b9e4920b5c2c5a2c4defcb61ceb56d857deb7e7a9d6c1b725fe5b60974ee6ab2a3279f526173258da5b0b466bdd62759b8e2d2b772287669ef5a38dc3b882c673528b7b7dd15d94b40fa7c320864b67094dec6e34876d58ee87253146de15f1bf36cb23db43595386baa3108a060d2618ae763469b92a9754a56a4be119787e5471f127397fd9e8ee5460d4cc9a8a2858332439ae70d6f01cd6dc91af6e9e357c8a62b934578766df2aae9d8faaedfc77206535061b13a68a374cd9a3b86b4e961701702f6d1af8556e8531da8f736787e4712b1426f4e0cc795a27a5421ca4ba1b28590dbd4aee56df63fa3e88a6de37907505e85765f47c8adf7bfb2c29b7aa4a0ea0040080c5e50f94bfd9fa1a80d5e1de263f55bd4809280101c2a015ea4230b94be54ff67e90bcfe6feb33d6f0bfdba2a4ad43a270a16420a125b601828a9127865b9801d57075ebd23816de3e3fab16ce6e7664b1e51d2ee5293a16b25b7a3a5be9b64ec6308929f333cb4e78246693a85b5dc71acd663bafbb3571332191cca3b5a3acc06a5cc12361716b80208b1b83b75ab2c5b5adeba31fee18f19723910aae8e48c80f8dcd275022d7e458655ce3d248d9a6faec4f95a688ef611a082397428d72996138c96e2f621c893f92e921cdd726735fdd1d76ef4df48e4e057563df7ec62f42b69c797bf72ce3cabac02dddafeb069eb1759d65dabbb34df07c66fa2d10e9f189190cb4e1adcd98ddc4dee0f16954576a0e3f26c598309db0b37ed1181e2029ea193969706df403a74823f751459e9cd4cb66e3fe228704fa967806350c753512cb9c1b367ea17203dc4e9b6db15b1464415926fc9a199816ce8ae15f7890f18a3a211e7d35448e75c780f00683acef42a5b0a57584bb99f16dcc94b96e824b5dd0f65c55b24962746f0e0216825a76826e3472abe4d9cd38f5f063e0f8f28c26ac8f77e45e30fbe174a09b9cf75f4e9ff74ac927ff001477f262c78259b774d2d17b9675cca56b9cc3fcf9d8c65f6b2368d24705ee566c89aaa2f5ee66870ba2595672cbd916dfdb2aaa4785840fec07e855969baf66d51a50caff00df92bf2df1685f34f0ee363656c96eee1de11cd22f9c2c358e358b2ad87338f2f5f937383e2deab858ac7cbaf698f2b4b5a3d3210e525d0d942c86dea515b7d8cfa229f78df54752f42bb2fa3e456fbdfd9614dbd525075002004062f287ca5fecfd0d406b30ef131fa8dea404840080e1500af521185ca5f2a7fb3f485e7f37f599eb785fedd15256a1d13850b21050935790a7c1a83fda3a8aeaf0ff006c91c1e31efad7f263cea5ce5df6771f487f635797fae9c7f63bff0015bf9fafcabc9c4e09decfb27d536a770d36e6ceceb0cecdb6acd3ac1e359e4ecf462a069d4e87933f5bb6ccbd6d4d43a789b519d9cd736c1c2c6c5c3a568b958e7153ee772bae88d13951db44fcbf61dd43468cc6e9b68d6566cd8b72e88d6e0b64550f6faec6f08a461c3aa647301734f82e2348d03528a609d0db5d49cbbe5f8dae31974187d0c5f8609f307743216e76ddf762acaa87e194bc993d6b7f1fc9be9a33a569ad6fa9dbd1c29a4c95d041427b2e870a95fc9297512513d74d16421c9adf764e84b9c6d6b9b705f4742b26d20a082aaa1f21ce7bcb8dad771b9b705d4ca4e7ee26aaa15f48c743ff008ccd9d0b89077380230468005b41e1d4164f5e4dc77e0c0b87d5cb38afeaee5862b958ea88df1c94d0e73878c68b381e1e559e796a69c5c7fb9a98dc1fd0b14a137a5e0ccb969a3ba86dcac5d0d942c86dea515b7d8cfa229f78df54752f42bb2fa3e456fbdfd9614dbd525075002004062f287ca5fecfd0d406af0ef131fa8dea404940080e1500af521184ca5f2a7fb3f485e7f37f599eb785fedd15456a1d11250b21250935790cdbb676820170005f90ae9e04572c8e07187a9c1fc101f91d5235061e4776858d604f7b5a361718a9c74f64ff00e20d2bed1481be0b5a5a4f0125b616e659f3a3ae59235b825d1529c7cb1dc5df3b68e9773f74bdb4e6027466e8bd82b5d3b23545c0c58aa996458edd6b7e4cb99667d44666cecece60bbc58db386cb05a4bd476c5cf7b3b5c95431e6a9d6b5e0d4654e524b4f51dc98185b9ad3670be937be9e65bb9393284f491c7e1dc3a19157336d3d8818999f0ca8798dac2347822c0ead255bd57650df421e3fa19b08edbebe4a49a61f8531b717eeceb8dbb4ad472d63ff0073a70adbe22dff00067169a676f7e0e216424a1224a9250928584942443949643450b210e525d0d942c86dca4b082a4ba1b28590dbd4a2b77b19f4453ef1bea8ea5e85765f47c8adf7bfb2c29b7aa4a0ea0040080c5e50f94bfd9fa1a80d5e1de263f51bd4809280101c280af45d479311953111505c46870691cc003d4b839d17ea391eab85cd7a3cbf05395a48e9ec4142c70a92c208531938ad223953ee38ca991bbd91e391c4752b2b25f251d154bbc57f82caaf18ee944da7739ce787924b893e0dc91e11e65b33c852ab95bea68d584ebca76249474334f94755180d6cc6c058021b603a1561996c56b6669f0cc69cb99c7a8cd6e352cb232490826320b74586837d3cea93c8b272529783253835d55ca11f3dc6318c49d532f757800d80d1ab45fb545d6bb65ccd1931315634392248a4c6332964a5ccbf7437cebead5b3996485ca35b868c36e073e446edf6199ab61348d844204ad71264d1a45cedd675ea47645d5c89168635cb29dadf47e0ab58347490955ec58e1524a12549284942c24a1221ca4b21b28590db949743650b21b7292c20a92e86ca16436f528adbec67d114fbc6faa3a97a15d97d1f22b7defecb0a6dea9283a8010020317945e52ff67e86a0351452811301d61adea403dba5a80e6ea1c680e1ab6f1a023c92027422e84b5b235651c72b73646e70f88e43b162b2984fba325375953fcacaa7e4ac075178f687ee16abc0ad9d15c62f5d3a0cbf2463d92bc7280553fdba3e19963c6ad5de230ec8fe09fa59fe551f0efe4c8b8e7cc461f92126c95bce0855ff006d97c99571baff00ea30fc919f639879ff00c2c6f874fe4cab8dd3e50c3f25aa47e569e470557816af0668f17c764793276a47f449e420aa3c3b7e0ceb8a63bfea23bf07a81ae07f42a7e1ec5e0cb1cea25da4467d14a35c4ff74aafa53f28cab269ff00b219744e1ada47282aae0fe19955d07d9a1a25472b2fccbe44a752c989288b7f270a9eafb12baf61250b21250b09284887292c869c859087292e86ca16436549610e525d0d942c86dca5772b6fb1fd1f4453ef1bea8ea5e85765f47c8adf7bfb2c29b7aa4a0ea0040080c5e51794bfd9fa1a80d0c3bc1c83a9483a5083850082a34488729077ba9423473bbf12121ba78940d86eb1c05006eb6f1f4203bbad9c3f029a40e8a967ea084f8d0a13b7f50e94234283c70841a3b74e9e494da38630760e851cb1f82dcf2f91b752c675c6de80aaeb8bee8b2bac5da4c624c229ddae08cfb2155d15bf0658e6e42ed3642acc96a691a5a220c2753982c41fdd629e2d725a3668e2b91097596fecc063384c94d2663f483bd70d4e1fb1e25c7be8954cf5d879b0c986e3dfca2b8ac5d0ded89288912509de8770fa374d2b216901cf3604ea1a0927a01592107396918f26f8d15bb1f82fa4c81aad8f88fb4e1ff8adc7833d7438f1ff005263f94c892e43d68d4c61e478fdd51e15a6c47fd418be764493242b47fe9c9e42d3d4555e25bf06c438de24bfa8892e4e560d74b27336eabf87b1783623c5711ff5a214b85ceddf4120f64f628f46cf836239d8efb4d111f4ef1ad8e1cad3d8aae0fe199a39353ed2459e4f64e4d552b5a18e11dc67bc8b0036dafacacd551293ec68710e294d15b5b4dfc23dbd8db0038000bb5e0f9a49f336c9f036cd0a481c400801018bca1f297fb3f43501a18778d3b0b469e65241d4024a01050082848972010500db9401b72010e520414021ca091b7201b2804179e13d2804ee878fceee9280e6ef946a91c80efe2d30fcfd280b6c1f15ee9e03ed9fb381dfe53e88d6fb92318c359511189dec9fd2761586da958b4cdac3c996359cf16793d4c2e8dee8dc2ce69208e31fedfa1702c87233dfd36c6ead58864aab33f912509df5363fc3ec1c979ab78d02e23e327417745c7395d3c2a34f999e678f672e5f420fecdd4b3358339ce0d1c2e200d3aae4aea743ca3d2e887bb99e04d8dbf273b99e029a070829a24e2687e612e8c1d601e501434be09564d797fe4eb5bb00e60a56d10f6faec910c1b4a104a4008010020317943e52ff0067e86a0357877898fd46f52016fa70789011e4a6235694046210082804390092a491a284087201b721224a01b728036e4036500d3900d38a01a2806dc804b642d21c358371cc8ba106e29271231af1f985f9f6fc5076309fc41a1cd99b30d520b1f59bfe3a97233e1d5347ade0193ea54ea7e0c915cf7d3b9e8cbac99c01d54fb91689a7c2770ff68e35b78b8eed7b7d8e5713e231c686a2ff0031e9f044d63431a006b40006c002ed462a2b48f0f39b9c9c9f930d9598cf767f7261f01875fea770f20562aba11f04ca49a9acd073a3fd0ed43d53b106cf40c1b1f86a4780eb3f6b1dbe1c9c3cc8416c101cb200cc1c08003470211a3a848200400801018bca1f297fb3f43501abc3bc4b3d56f52024a00402248c1d6101164a1fd2798a020cb139bac76201a729246ca10365008721220a01b7150068a010e4034e28069e8069c500db900db8a1069f25e5bc25bfa5df03a501132f69f3a973b6b1c0f36a3f02b4f3e3bab6bc1d9e096f2dff00665726f26df5243dd76c435bb6bb89bdab431f11d8d499dee23c561447963d647a452d3b23608d8d0d6b45800bb11872c796278cbad95b3e693d94f94a6a9e0c3042f20ef9e2c2e0ec6dcabfd14e8ba196193159ff00b77748ed4038dc93acf33f30403d06485667021a1b6fcd9f6238c5901e8d87c6f6c4c6c8ece780039dc2785082420040080100200400801018cca01ff25fecfd2d406a698e69311d8496f1b49bd872124725901290020040080e140459a858ed5a0f12020cb86bc6ab14033f87c9fa7e2803f0b94ec1d2100a1833ff0053474f620143023b641cc100b180376bddcc00402c60316dce3ca7b100eb705807f4fa4b8fee8075b86c23fa4cf74201cdc91daddcdb6f5420224f81d3bf5c4071b6edead080a9abc92074c7211c4f17f88b7520118261f340f73646f824021c348b8e3e1405ad4d3b24698ded0e69d60ea36fff00144a3cc5e163adf3407236000340b01a001fb044b5d08949c9f34bb92e18769d6a4a8fa0040080100200400801002004008010089a40d6971d43fdd0808b151348ce7b4171b937d9737b720d5cc807e6843869e5046b0789015d5f88ba0b6700fbeafca79ce9079804043efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00efa3d0fcff6a00394fb3b8fcff6a01838f8f347dffb53b07d10e4794607f47e7fb509ee873be8f43f3fda841cefa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a00efa3d0fcff006a0170e5197b834456276975edcd6080b68e024e73dd9c46ad1668e41da4a0255901ffd9);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_orders` int NOT NULL,
  `id_client` int NOT NULL,
  `sum_order` int NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_orders`, `id_client`, `sum_order`, `date_order`) VALUES
(36, 1, 9000, '2022-04-21 18:49:42'),
(38, 1, 2000, '2022-04-22 16:22:54'),
(39, 1, 2000, '2022-04-22 16:25:27'),
(40, 1, 2000, '2022-04-22 16:34:55');

-- --------------------------------------------------------

--
-- Структура таблицы `order_item`
--

CREATE TABLE `order_item` (
  `id_item` int NOT NULL,
  `id_order` int NOT NULL,
  `id_product` int NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `order_item`
--

INSERT INTO `order_item` (`id_item`, `id_order`, `id_product`, `count`) VALUES
(18, 36, 4, 6),
(19, 36, 3, 7),
(24, 38, 4, 1),
(25, 38, 3, 2),
(28, 39, 4, 1),
(29, 39, 3, 2),
(30, 40, 4, 1),
(31, 40, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id_rate` int NOT NULL,
  `name` text NOT NULL,
  `about` text NOT NULL,
  `price` int NOT NULL,
  `speed` int NOT NULL,
  `typ` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id_rate`, `name`, `about`, `price`, `speed`, `typ`) VALUES
(2, 'Минимал', 'Минимальный тариф', 500, 10, 1),
(3, 'Оптима', 'Средний тариф', 600, 15, 1),
(4, 'Комфорт', 'Комфортный тариф', 800, 80, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `type_product`
--

CREATE TABLE `type_product` (
  `id_type` int NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `type_product`
--

INSERT INTO `type_product` (`id_type`, `name`) VALUES
(1, 'Среднескоростные ');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL,
  `mail` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `pass`, `mail`, `role`) VALUES
(1, 'Саня', 'admin', 'admin', 'asd2@gmail.com', 'user'),
(2, 'asd', 'asd', 'asd', 'asd1@gmail.com', 'user'),
(6, 'Руслан', 'asd11', 'asd', 'asd@gmail.com', 'user'),
(7, 'asd', 'admin1', 'a', 'asdd@gmail.com', 'user'),
(8, 'Руслан', 'asd1', 'asd', 'asd@gmail.com', 'user'),
(9, '', '123', '', '', 'user'),
(10, 'Руслан', '123asd', 'adsasd', 'asd13@mail.ru', 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `visit`
--

CREATE TABLE `visit` (
  `id` int NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `visit`
--

INSERT INTO `visit` (`id`, `count`) VALUES
(1, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`),
  ADD KEY `id_client` (`id_client`);

--
-- Индексы таблицы `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_rate`),
  ADD KEY `typ` (`typ`);

--
-- Индексы таблицы `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id_type`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id_item` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id_rate` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `visit`
--
ALTER TABLE `visit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_orders`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_rate`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`typ`) REFERENCES `type_product` (`id_type`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
