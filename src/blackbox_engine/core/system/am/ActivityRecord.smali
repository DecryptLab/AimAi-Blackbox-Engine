.class public Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
.super Landroid/os/Binder;
.source "ActivityRecord.java"


# instance fields
.field public component:Landroid/content/ComponentName;

.field public finished:Z

.field public info:Landroid/content/pm/ActivityInfo;

.field public intent:Landroid/content/Intent;

.field public launchedFromPackage:Ljava/lang/String;

.field public launchedFromUid:I

.field public processRecord:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

.field public resultTo:Landroid/os/IBinder;

.field public task:Ltop/niunaijun/blackbox/core/system/am/TaskRecord;

.field public token:Landroid/os/IBinder;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;
    .registers 8

    .line 36
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;-><init>()V

    .line 37
    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 38
    iput-object p1, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 39
    new-instance p0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->component:Landroid/content/ComponentName;

    .line 40
    iput-object p2, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->resultTo:Landroid/os/IBinder;

    .line 41
    iput p3, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->userId:I

    .line 42
    iput-object p4, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 43
    iput p5, v0, Ltop/niunaijun/blackbox/core/system/am/ActivityRecord;->launchedFromUid:I

    return-object v0
.end method
