.class final Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;
.super Ljava/lang/Object;
.source "BActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingDispatch"
.end annotation


# instance fields
.field final intents:[Landroid/content/Intent;

.field final payload:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

.field final resolvedTypes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;[Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 4

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->payload:Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

    .line 621
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->intents:[Landroid/content/Intent;

    .line 622
    iput-object p3, p0, Ltop/niunaijun/blackbox/core/system/am/BActivityManagerService$PendingDispatch;->resolvedTypes:[Ljava/lang/String;

    return-void
.end method
