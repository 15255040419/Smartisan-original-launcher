.class public final synthetic Lb/c/a/c/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic a:Lcom/google/common/base/Predicate;

.field private final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/Predicate;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/c/a/c/j;->a:Lcom/google/common/base/Predicate;

    iput-object p2, p0, Lb/c/a/c/j;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/c/j;->a:Lcom/google/common/base/Predicate;

    iget-object v1, p0, Lb/c/a/c/j;->b:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lb/c/a/c/w0$a;->a(Lcom/google/common/base/Predicate;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
