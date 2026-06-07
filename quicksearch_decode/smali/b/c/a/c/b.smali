.class public final synthetic Lb/c/a/c/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic a:Ljava/util/function/Consumer;

.field private final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/c/a/c/b;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lb/c/a/c/b;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/c/b;->a:Ljava/util/function/Consumer;

    iget-object v1, p0, Lb/c/a/c/b;->b:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Lb/c/a/c/a0$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method
