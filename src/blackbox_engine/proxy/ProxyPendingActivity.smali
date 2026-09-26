.class public Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity;
.super Landroid/app/Activity;
.source "ProxyPendingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P49;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P48;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P47;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P46;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P45;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P44;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P43;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P42;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P41;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P40;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P39;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P38;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P37;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P36;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P35;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P34;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P33;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P32;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P31;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P30;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P29;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P28;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P27;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P26;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P25;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P24;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P23;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P22;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P21;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P20;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P19;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P18;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P17;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P16;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P15;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P14;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P13;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P12;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P11;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P10;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P9;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P8;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P7;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P6;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P5;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P4;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P3;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P2;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P1;,
        Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity$P0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;->readRoute(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 27
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBActivityManager()Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ltop/niunaijun/blackbox/fake/frameworks/BActivityManager;->dispatchPendingActivity(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;Landroid/content/Intent;)Z

    .line 29
    :cond_18
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/proxy/ProxyPendingActivity;->finish()V

    return-void
.end method

###### Class top.niunaijun.blackbox.proxy.ProxyPendingActivity.P0 (top.niunaijun.blackbox.proxy.ProxyPendingActivity$P0)
