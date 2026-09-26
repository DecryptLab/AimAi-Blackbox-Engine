.class public Ltop/niunaijun/blackbox/core/system/pm/installer/CopyExecutor;
.super Ljava/lang/Object;
.source "CopyExecutor.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/pm/installer/Executor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)I
    .registers 6

    const/4 p0, -0x1

    const/4 p3, 0x1

    .line 27
    :try_start_2
    invoke-virtual {p2, p3}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getAppLibDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/NativeUtils;->copyNativeLib(Ljava/io/File;Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_4a

    :cond_1c
    const/4 v0, 0x2

    .line 34
    invoke-virtual {p2, v0}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 36
    new-instance p2, Ljava/io/File;

    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p3, p3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p3, p3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getBaseApkDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 39
    :try_start_34
    invoke-static {p2, p3}, Ltop/niunaijun/blackbox/utils/FileUtils;->copyReadOnlyFile(Ljava/io/File;Ljava/io/File;)V

    .line 41
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p0

    .line 46
    :cond_45
    invoke-virtual {p2, p3}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->isFlag(I)Z

    :goto_48
    const/4 p0, 0x0

    return p0

    :catch_4a
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method
