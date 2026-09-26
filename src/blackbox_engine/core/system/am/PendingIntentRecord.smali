.class public final Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# instance fields
.field public final flags:I

.field public final packageName:Ljava/lang/String;

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->uid:I

    .line 11
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->packageName:Ljava/lang/String;

    .line 12
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->type:I

    .line 13
    iput p4, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentRecord;->flags:I

    return-void
.end method
