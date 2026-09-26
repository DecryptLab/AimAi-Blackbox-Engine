.class public final Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;
.super Ljava/lang/Object;
.source "FacebookRedirect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/utils/FacebookRedirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorizationRequest"
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final redirectUri:Ljava/lang/String;

.field private final state:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->packageName:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->redirectUri:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->state:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltop/niunaijun/blackbox/utils/FacebookRedirect-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->redirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .registers 1

    .line 140
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/FacebookRedirect$AuthorizationRequest;->state:Ljava/lang/String;

    return-object p0
.end method
