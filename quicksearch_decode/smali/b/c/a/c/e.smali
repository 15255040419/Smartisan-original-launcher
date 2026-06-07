.class public final synthetic Lb/c/a/c/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic a:Ljava/util/function/Function;

.field private final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/c/a/c/e;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lb/c/a/c/e;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/c/e;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lb/c/a/c/e;->b:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lb/c/a/c/a0$b;->a(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
