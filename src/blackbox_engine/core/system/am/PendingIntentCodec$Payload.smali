.class final Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;
.super Ljava/lang/Object;
.source "PendingIntentCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Payload"
.end annotation


# instance fields
.field final featureId:Ljava/lang/String;

.field final flags:I

.field final intents:[Landroid/content/Intent;

.field final packageName:Ljava/lang/String;

.field final proxyComponent:Landroid/content/ComponentName;

.field final requestCode:I

.field final resolvedTypes:[Ljava/lang/String;

.field final routeAction:Ljava/lang/String;

.field final type:I

.field final uid:I

.field final userId:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 12

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p1, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->type:I

    .line 260
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->packageName:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->featureId:Ljava/lang/String;

    .line 262
    iput p4, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->uid:I

    .line 263
    iput p5, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->userId:I

    .line 264
    iput p6, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->requestCode:I

    .line 265
    iput p7, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->flags:I

    .line 266
    iput-object p8, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->intents:[Landroid/content/Intent;

    .line 267
    iput-object p9, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->resolvedTypes:[Ljava/lang/String;

    .line 268
    iput-object p10, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->proxyComponent:Landroid/content/ComponentName;

    .line 269
    iput-object p11, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;->routeAction:Ljava/lang/String;

    return-void
.end method
