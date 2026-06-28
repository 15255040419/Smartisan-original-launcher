.class public final synthetic Lcom/google/common/collect/-$$Lambda$Sets$3$HD_wTuijgQrcuiKowwjeSA8-YVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Sets$3$HD_wTuijgQrcuiKowwjeSA8-YVM;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Sets$3$HD_wTuijgQrcuiKowwjeSA8-YVM;->f$0:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets$3;->lambda$stream$0(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
