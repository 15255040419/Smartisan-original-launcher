.class Lcom/google/common/net/MediaType$2;
.super Ljava/lang/Object;
.source "MediaType.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/net/MediaType;->computeToString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/net/MediaType;


# direct methods
.method constructor <init>(Lcom/google/common/net/MediaType;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/google/common/net/MediaType$2;->this$0:Lcom/google/common/net/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 960
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/net/MediaType$2;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 963
    invoke-static {}, Lcom/google/common/net/MediaType;->access$000()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/net/MediaType;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
