.class public Ltop/niunaijun/blackbox/utils/Md5Utils;
.super Ljava/lang/Object;
.source "Md5Utils.java"


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 18
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Ltop/niunaijun/blackbox/utils/Md5Utils;->hexDigits:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .registers 9

    .line 89
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 91
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v1, :cond_23

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 92
    sget-object v6, Ltop/niunaijun/blackbox/utils/Md5Utils;->hexDigits:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v4, v4, 0xf

    .line 93
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 96
    :cond_23
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 38
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    .line 43
    :cond_8
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 45
    invoke-static {v1}, Ltop/niunaijun/blackbox/utils/Md5Utils;->md5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_14} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1e
    return-object v0
.end method

.method public static md5(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .line 63
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x400

    .line 65
    new-array v1, v1, [B

    .line 67
    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_a

    .line 71
    :cond_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/Md5Utils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_21} :catch_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_21} :catch_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    :catch_27
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_30

    :catch_2c
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 26
    :cond_4
    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 27
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 28
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 29
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 30
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/Md5Utils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    return-object v0
.end method
