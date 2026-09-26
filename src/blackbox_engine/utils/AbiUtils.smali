.class public Ltop/niunaijun/blackbox/utils/AbiUtils;
.super Ljava/lang/Object;
.source "AbiUtils.java"


# static fields
.field private static final ARM32:Ljava/lang/String; = "armeabi-v7a"

.field private static final ARM64:Ljava/lang/String; = "arm64-v8a"

.field private static final ARM_LEGACY:Ljava/lang/String; = "armeabi"

.field private static final X86:Ljava/lang/String; = "x86"

.field private static final X86_64:Ljava/lang/String; = "x86_64"

.field private static final sAbiUtilsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ltop/niunaijun/blackbox/utils/AbiUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLibs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/utils/AbiUtils;->sAbiUtilsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    :try_start_d
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_50
    .catchall {:try_start_d .. :try_end_12} :catchall_4e

    .line 52
    :try_start_12
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 53
    :goto_16
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 54
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 55
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 56
    const-string v4, "arm64-v8a"

    invoke-direct {p0, v2, v4}, Ltop/niunaijun/blackbox/utils/AbiUtils;->addAbi(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v4, "armeabi-v7a"

    invoke-direct {p0, v2, v4}, Ltop/niunaijun/blackbox/utils/AbiUtils;->addAbi(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v4, "armeabi"

    invoke-direct {p0, v2, v4}, Ltop/niunaijun/blackbox/utils/AbiUtils;->addAbi(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v4, "x86_64"

    invoke-direct {p0, v2, v4}, Ltop/niunaijun/blackbox/utils/AbiUtils;->addAbi(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v4, "x86"

    invoke-direct {p0, v2, v4}, Ltop/niunaijun/blackbox/utils/AbiUtils;->addAbi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3f} :catch_4b
    .catchall {:try_start_12 .. :try_end_3f} :catchall_48

    goto :goto_16

    .line 65
    :cond_40
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_48
    move-exception p0

    move-object v2, v3

    goto :goto_5c

    :catch_4b
    move-exception p0

    move-object v2, v3

    goto :goto_51

    :catchall_4e
    move-exception p0

    goto :goto_5c

    :catch_50
    move-exception p0

    .line 63
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    .line 65
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    return-void

    :goto_5c
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 66
    throw p0
.end method

.method private addAbi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 83
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public static getPrimaryAbi()Ljava/lang/String;
    .registers 2

    .line 45
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0

    :cond_8
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static isSupport(Ljava/io/File;)Z
    .registers 4

    .line 32
    sget-object v0, Ltop/niunaijun/blackbox/utils/AbiUtils;->sAbiUtilsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/utils/AbiUtils;

    if-nez v1, :cond_12

    .line 34
    new-instance v1, Ltop/niunaijun/blackbox/utils/AbiUtils;

    invoke-direct {v1, p0}, Ltop/niunaijun/blackbox/utils/AbiUtils;-><init>(Ljava/io/File;)V

    .line 35
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_12
    invoke-virtual {v1}, Ltop/niunaijun/blackbox/utils/AbiUtils;->hasNoNativeLibraries()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1a

    return v0

    .line 40
    :cond_1a
    invoke-static {}, Ltop/niunaijun/blackbox/utils/AbiUtils;->getPrimaryAbi()Ljava/lang/String;

    move-result-object p0

    .line 41
    iget-object v2, v1, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "armeabi-v7a"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    iget-object p0, v1, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "armeabi"

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    return v0
.end method


# virtual methods
.method public hasNoNativeLibraries()Z
    .registers 1

    .line 78
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public is32Bit()Z
    .registers 3

    .line 74
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "armeabi"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "armeabi-v7a"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v0, "x86"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public is64Bit()Z
    .registers 3

    .line 70
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v1, "arm64-v8a"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/AbiUtils;->mLibs:Ljava/util/Set;

    const-string v0, "x86_64"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method
