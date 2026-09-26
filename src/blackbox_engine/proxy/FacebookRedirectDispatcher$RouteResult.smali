.class final enum Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;
.super Ljava/lang/Enum;
.source "FacebookRedirectDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RouteResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

.field public static final enum REJECTED:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

.field public static final enum UNKNOWN:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

.field public static final enum VIRTUAL:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;


# direct methods
.method private static synthetic $values()[Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;
    .registers 3

    .line 118
    sget-object v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->VIRTUAL:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    sget-object v1, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->REJECTED:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    sget-object v2, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->UNKNOWN:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    filled-new-array {v0, v1, v2}, [Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 119
    new-instance v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    const-string v1, "VIRTUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->VIRTUAL:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    .line 120
    new-instance v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    const-string v1, "REJECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->REJECTED:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    .line 121
    new-instance v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->UNKNOWN:Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    .line 118
    invoke-static {}, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->$values()[Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->$VALUES:[Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 118
    const-class v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    return-object p0
.end method

.method public static values()[Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;
    .registers 1

    .line 118
    sget-object v0, Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->$VALUES:[Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    invoke-virtual {v0}, [Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/proxy/FacebookRedirectDispatcher$RouteResult;

    return-object v0
.end method
