.class public Ltop/niunaijun/blackbox/utils/TrieTree;
.super Ljava/lang/Object;
.source "TrieTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;
    }
.end annotation


# instance fields
.field private final root:Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/TrieTree;->root:Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 7

    .line 44
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/TrieTree;->root:Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 46
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    new-instance v3, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;-><init>(CLjava/lang/String;)V

    .line 50
    iget-object v4, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 51
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->nextNode(C)Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    move-result-object p0

    goto :goto_31

    .line 53
    :cond_2b
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v3

    .line 57
    :goto_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_3b

    .line 58
    iput-boolean v3, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->isEnd:Z

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3e
    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/utils/TrieTree;->add(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public search(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 69
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/TrieTree;->root:Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    const/4 v0, 0x0

    .line 70
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_29

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 73
    new-instance v3, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    invoke-direct {v3, v1, v2}, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;-><init>(CLjava/lang/String;)V

    .line 74
    iget-object v4, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 75
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->nextNode(C)Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;

    move-result-object p0

    .line 79
    iget-boolean v1, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->isEnd:Z

    if-eqz v1, :cond_26

    .line 80
    iget-object p0, p0, Ltop/niunaijun/blackbox/utils/TrieTree$TrieNode;->word:Ljava/lang/String;

    return-object p0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_29
    return-object v2
.end method

###### Class top.niunaijun.blackbox.utils.TrieTree.TrieNode (top.niunaijun.blackbox.utils.TrieTree$TrieNode)
