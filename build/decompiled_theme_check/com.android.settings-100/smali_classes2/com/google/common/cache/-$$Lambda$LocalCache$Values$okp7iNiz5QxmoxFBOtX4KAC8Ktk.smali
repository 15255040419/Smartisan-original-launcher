.class public final synthetic Lcom/google/common/cache/-$$Lambda$LocalCache$Values$okp7iNiz5QxmoxFBOtX4KAC8Ktk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$Values$okp7iNiz5QxmoxFBOtX4KAC8Ktk;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$Values$okp7iNiz5QxmoxFBOtX4KAC8Ktk;->f$0:Ljava/util/function/Predicate;

    invoke-static {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Values;->lambda$removeIf$0(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
