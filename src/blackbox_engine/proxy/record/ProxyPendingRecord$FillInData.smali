.class public final Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;
.super Ljava/lang/Object;
.source "ProxyPendingRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FillInData"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final resolvedType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;->intent:Landroid/content/Intent;

    .line 178
    iput-object p2, p0, Ltop/niunaijun/blackbox/proxy/record/ProxyPendingRecord$FillInData;->resolvedType:Ljava/lang/String;

    return-void
.end method
