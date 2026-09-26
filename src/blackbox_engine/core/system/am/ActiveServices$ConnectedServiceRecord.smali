.class public Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedServiceRecord"
.end annotation


# instance fields
.field private mComponent:Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic -$$Nest$fgetmComponent(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmComponent(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.am.ActiveServices.RunningServiceRecord (top.niunaijun.blackbox.core.system.am.ActiveServices$RunningServiceRecord)
