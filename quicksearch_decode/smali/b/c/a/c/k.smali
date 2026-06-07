.class public final synthetic Lb/c/a/c/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic a:Ljava/util/function/Consumer;

.field private final synthetic b:Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/google/common/base/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/c/a/c/k;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lb/c/a/c/k;->b:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/c/k;->a:Ljava/util/function/Consumer;

    iget-object v1, p0, Lb/c/a/c/k;->b:Lcom/google/common/base/Function;

    invoke-static {v0, v1, p1}, Lb/c/a/c/w0$b;->a(Ljava/util/function/Consumer;Lcom/google/common/base/Function;Ljava/lang/Object;)V

    return-void
.end method
