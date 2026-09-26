.class public Ltop/niunaijun/blackbox/proxy/ProxyContentProvider;
.super Landroid/content/ContentProvider;
.source "ProxyContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P49;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P48;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P47;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P46;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P45;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P44;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P43;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P42;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P41;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P40;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P39;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P38;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P37;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P36;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P35;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P34;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P33;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P32;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P31;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P30;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P29;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P28;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P27;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P26;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P25;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P24;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P23;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P22;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P21;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P20;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P19;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P18;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P17;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P16;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P15;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P14;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P13;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P12;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P11;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P10;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P9;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P8;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P7;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P6;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P5;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P4;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P3;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P2;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P1;,
        Ltop/niunaijun/blackbox/proxy/ProxyContentProvider$P0;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 33
    const-string v0, "_Black_|_init_process_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 35
    const-class p0, Ltop/niunaijun/blackbox/entity/AppConfig;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 36
    const-string p0, "BlackBox_client_config"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/entity/AppConfig;

    .line 37
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->initProcess(Ltop/niunaijun/blackbox/entity/AppConfig;)V

    .line 39
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string p1, "_Black_|_client_"

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0

    .line 43
    :cond_2f
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

###### Class top.niunaijun.blackbox.proxy.ProxyContentProvider.P0 (top.niunaijun.blackbox.proxy.ProxyContentProvider$P0)
