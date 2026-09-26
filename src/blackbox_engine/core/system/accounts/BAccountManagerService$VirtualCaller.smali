.class final Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;
.super Ljava/lang/Object;
.source "BAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualCaller"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final pid:I

.field final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 2118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2119
    iput p1, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->pid:I

    .line 2120
    iput p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->uid:I

    .line 2121
    iput-object p3, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccountManagerService$VirtualCaller;->packageName:Ljava/lang/String;

    return-void
.end method
