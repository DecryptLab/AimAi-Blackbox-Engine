.class final Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;
.super Ljava/lang/Object;
.source "OAuthRedirectRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Route"
.end annotation


# instance fields
.field private final createdAt:J

.field private final packageName:Ljava/lang/String;

.field private final userId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcreatedAt(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)J
    .registers 3

    iget-wide v0, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->createdAt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetpackageName(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserId(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)I
    .registers 1

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->userId:I

    return p0
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .registers 5

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->packageName:Ljava/lang/String;

    .line 166
    iput p2, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->userId:I

    .line 167
    iput-wide p3, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->createdAt:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IJLtop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method
