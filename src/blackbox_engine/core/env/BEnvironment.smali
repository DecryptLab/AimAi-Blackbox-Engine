.class public Ltop/niunaijun/blackbox/core/env/BEnvironment;
.super Ljava/lang/Object;
.source "BEnvironment.java"


# static fields
.field private static final sExternalVirtualRoot:Ljava/io/File;

.field private static final sVirtualRoot:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blackbox"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    .line 12
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountsConf()Ljava/io/File;
    .registers 3

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "accounts.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppDir(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 118
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/app/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppLibDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppRootDir()Ljava/io/File;
    .registers 1

    .line 114
    const-string v0, ""

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseApkDir(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 122
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/app/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/base.apk"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .registers 3

    .line 39
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataCacheDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 102
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataDatabasesDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "databases"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 80
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "data/user/%d/%s"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataFilesDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataLibDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "lib"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeDataDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 71
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "data/user_de/%d/%s"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataCacheDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "Android/data/%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalDataFilesDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalDataDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalUserDir(I)Ljava/io/File;
    .registers 5

    .line 63
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "storage/emulated/%d/"

    invoke-static {v2, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalVirtualRoot()Ljava/io/File;
    .registers 1

    .line 27
    sget-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    return-object v0
.end method

.method public static getPackageConf(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "package.conf"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getProcDir()Ljava/io/File;
    .registers 3

    .line 35
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    const-string v2, "proc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getProcDir(I)Ljava/io/File;
    .registers 5

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getProcDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "%d"

    invoke-static {v2, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    return-object v0
.end method

.method public static getSharedUserConf()Ljava/io/File;
    .registers 3

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "shared-user.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSystemDir()Ljava/io/File;
    .registers 3

    .line 31
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUidConf()Ljava/io/File;
    .registers 3

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "uid.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserDir(I)Ljava/io/File;
    .registers 5

    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "data/user/%d"

    invoke-static {v2, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserInfoConf()Ljava/io/File;
    .registers 3

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "user.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVirtualRoot()Ljava/io/File;
    .registers 1

    .line 23
    sget-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    return-object v0
.end method

.method public static load()V
    .registers 1

    .line 15
    sget-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sVirtualRoot:Ljava/io/File;

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 16
    sget-object v0, Ltop/niunaijun/blackbox/core/env/BEnvironment;->sExternalVirtualRoot:Ljava/io/File;

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 17
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 18
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    .line 19
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getProcDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/io/File;)V

    return-void
.end method
