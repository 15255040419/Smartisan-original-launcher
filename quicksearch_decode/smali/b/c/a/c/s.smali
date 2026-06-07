.class public final synthetic Lb/c/a/c/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final synthetic a:Lb/c/a/c/v0;


# direct methods
.method public synthetic constructor <init>(Lb/c/a/c/v0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/c/a/c/s;->a:Lb/c/a/c/v0;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/c/a/c/s;->a:Lb/c/a/c/v0;

    invoke-virtual {v0, p1}, Lb/c/a/c/v0;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
