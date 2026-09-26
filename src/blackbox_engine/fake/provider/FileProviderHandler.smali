.class public Ltop/niunaijun/blackbox/fake/provider/FileProviderHandler;
.super Ljava/lang/Object;
.source "FileProviderHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .registers 5

    .line 35
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_8
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 38
    :try_start_14
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Ltop/niunaijun/blackbox/fake/provider/FileProvider;->getFileForUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_8

    if-eqz v2, :cond_8

    return-object v1

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    .line 25
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isN()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 26
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/fake/provider/FileProviderHandler;->convertFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_e
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBStorageManager()Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltop/niunaijun/blackbox/fake/frameworks/BStorageManager;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object p1
.end method
