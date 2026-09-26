.class public final Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;
.super Ljava/lang/Object;
.source "MicrogSignatureCompat.java"


# static fields
.field private static final GOOGLE_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

.field private static final OFFICIAL_MICROG_SIGNER_SHA_256:[B

.field private static final SHA_256:Ljava/lang/String; = "SHA-256"

.field private static final SIGNATURE_SCHEME_V1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MicrogSignatureCompat"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    const-string v0, "9bd06727e62796c0130eb6dab39b73157451582cbd138e86c468acc395d14165"

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->decodeHex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->OFFICIAL_MICROG_SIGNER_SHA_256:[B

    .line 22
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->GOOGLE_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSigningInfo([Landroid/content/pm/Signature;)Landroid/content/pm/SigningInfo;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_40

    .line 91
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_40

    .line 95
    :cond_7
    :try_start_7
    const-class v1, Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 100
    invoke-virtual {p0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$SigningDetails;

    .line 101
    invoke-static {}, Lblack/android/content/pm/BRSigningInfo;->get()Lblack/android/content/pm/SigningInfoStatic;

    move-result-object v1

    invoke-interface {v1, p0}, Lblack/android/content/pm/SigningInfoStatic;->_new(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/SigningInfo;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_38

    return-object p0

    :catchall_38
    move-exception p0

    .line 103
    const-string v1, "MicrogSignatureCompat"

    const-string v2, "Unable to create SigningInfo"

    invoke-static {v1, v2, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    :goto_40
    return-object v0
.end method

.method private static decodeHex(Ljava/lang/String;)[B
    .registers 6

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_43

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 147
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    .line 149
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v2, :cond_3a

    if-ltz v3, :cond_3a

    .line 153
    div-int/lit8 v4, v1, 0x2

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_11

    .line 151
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid hex value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    return-object v0

    .line 144
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hex value must have an even length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getActualSignatures(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)[Landroid/content/pm/Signature;
    .registers 2

    .line 128
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSigningDetails:Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    if-nez v0, :cond_7

    .line 129
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_b

    .line 130
    :cond_7
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSigningDetails:Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    :goto_b
    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 131
    new-array p0, p0, [Landroid/content/pm/Signature;

    :cond_10
    return-object p0
.end method

.method static getReportedSignatures(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)[Landroid/content/pm/Signature;
    .registers 3

    .line 82
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isSignatureSpoofPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 83
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->isOfficialMicrogPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x1

    .line 84
    new-array p0, p0, [Landroid/content/pm/Signature;

    const/4 v0, 0x0

    sget-object v1, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->GOOGLE_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v1, p0, v0

    return-object p0

    .line 86
    :cond_17
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->getActualSignatures(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)[Landroid/content/pm/Signature;

    move-result-object p0

    .line 87
    array-length v0, p0

    if-nez v0, :cond_20

    const/4 p0, 0x0

    return-object p0

    :cond_20
    invoke-virtual {p0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Signature;

    return-object p0
.end method

.method public static hasSigningCertificate(Landroid/content/pm/PackageInfo;[BI)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_30

    if-eqz p1, :cond_30

    .line 110
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v1, :cond_a

    goto :goto_30

    .line 113
    :cond_a
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, p0

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_30

    aget-object v3, p0, v2

    .line 114
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x1

    if-nez p2, :cond_20

    .line 116
    invoke-static {v3, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_20

    return v4

    :cond_20
    if-ne p2, v4, :cond_2d

    .line 120
    invoke-static {v3}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->sha256([B)[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_2d

    return v4

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_30
    :goto_30
    return v0
.end method

.method public static isOfficialMicrogPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 50
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isRuntimePackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_27

    .line 53
    :cond_c
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->getActualSignatures(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)[Landroid/content/pm/Signature;

    move-result-object p0

    .line 54
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    aget-object p0, p0, v0

    .line 55
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->sha256([B)[B

    move-result-object p0

    sget-object v1, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->OFFICIAL_MICROG_SIGNER_SHA_256:[B

    invoke-static {p0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_27

    return v2

    :cond_27
    :goto_27
    return v0
.end method

.method private static sha256([B)[B
    .registers 3

    .line 136
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SHA-256 is unavailable"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static signaturesMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    .line 60
    array-length v1, p0

    if-eqz v1, :cond_31

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_d

    goto :goto_31

    .line 64
    :cond_d
    array-length v1, p1

    new-array v1, v1, [Z

    .line 65
    array-length v2, p0

    move v3, v0

    :goto_12
    const/4 v4, 0x1

    if-ge v3, v2, :cond_30

    aget-object v5, p0, v3

    move v6, v0

    .line 67
    :goto_18
    array-length v7, p1

    if-ge v6, v7, :cond_2f

    .line 68
    aget-boolean v7, v1, v6

    if-nez v7, :cond_2c

    aget-object v7, p1, v6

    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 69
    aput-boolean v4, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_2f
    return v0

    :cond_30
    return v4

    :cond_31
    :goto_31
    return v0
.end method
