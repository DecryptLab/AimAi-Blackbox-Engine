.class public Ltop/niunaijun/blackbox/proxy/ProxyActivity;
.super Landroid/app/Activity;
.source "ProxyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P49;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P48;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P47;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P46;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P45;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P44;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P43;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P42;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P41;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P40;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P39;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P38;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P37;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P36;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P35;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P34;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P33;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P32;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P31;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P30;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P29;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P28;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P27;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P26;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P25;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P24;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P23;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P22;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P21;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P20;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P19;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P18;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P17;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P16;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P15;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P14;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P13;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P12;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P11;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P10;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P9;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P8;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P7;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P6;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P5;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P4;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P3;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P2;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P1;,
        Ltop/niunaijun/blackbox/proxy/ProxyActivity$P0;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ProxyActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string p1, "ProxyActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyActivity;->finish()V

    .line 34
    invoke-static {}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->get()Ltop/niunaijun/blackbox/fake/hook/HookManager;

    move-result-object p1

    const-class v0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;

    invoke-virtual {p1, v0}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    .line 37
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;

    move-result-object p1

    .line 38
    iget-object v0, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    if-eqz v0, :cond_34

    .line 39
    iget-object v0, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 40
    iget-object p1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mTarget:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/proxy/ProxyActivity;->startActivity(Landroid/content/Intent;)V

    :cond_34
    return-void
.end method

###### Class top.niunaijun.blackbox.proxy.ProxyActivity.P0 (top.niunaijun.blackbox.proxy.ProxyActivity$P0)
