.class public Ltop/niunaijun/blackbox/core/env/VirtualRuntime;
.super Ljava/lang/Object;
.source "VirtualRuntime.java"


# static fields
.field private static sProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 1

    .line 13
    sget-object v0, Ltop/niunaijun/blackbox/core/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static setupRuntime(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 17
    sget-object p1, Ltop/niunaijun/blackbox/core/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    if-eqz p1, :cond_5

    return-void

    .line 20
    :cond_5
    sput-object p0, Ltop/niunaijun/blackbox/core/env/VirtualRuntime;->sProcessName:Ljava/lang/String;

    .line 21
    invoke-static {}, Lblack/android/os/BRProcess;->get()Lblack/android/os/ProcessStatic;

    move-result-object p1

    invoke-interface {p1, p0}, Lblack/android/os/ProcessStatic;->setArgV0(Ljava/lang/String;)Ljava/lang/Void;

    .line 22
    invoke-static {}, Lblack/android/ddm/BRDdmHandleAppName;->get()Lblack/android/ddm/DdmHandleAppNameStatic;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lblack/android/ddm/DdmHandleAppNameStatic;->setAppName(Ljava/lang/String;I)Ljava/lang/Void;

    return-void
.end method
