.class public final Ld/n/c$c;
.super Ld/q/c/e;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/n/c;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/q/c/e;",
        "Lkotlin/jvm/functions/Function2<",
        "Ld/j;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "Ld/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:[Lkotlin/coroutines/CoroutineContext;

.field public final synthetic c:Ld/q/c/f;


# direct methods
.method public constructor <init>([Lkotlin/coroutines/CoroutineContext;Ld/q/c/f;)V
    .locals 0

    iput-object p1, p0, Ld/n/c$c;->b:[Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Ld/n/c$c;->c:Ld/q/c/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ld/q/c/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ld/j;Lkotlin/coroutines/CoroutineContext$Element;)V
    .locals 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ld/n/c$c;->b:[Lkotlin/coroutines/CoroutineContext;

    iget-object v0, p0, Ld/n/c$c;->c:Ld/q/c/f;

    iget v1, v0, Ld/q/c/f;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Ld/q/c/f;->a:I

    aput-object p2, p1, v1

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ld/j;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Ld/n/c$c;->a(Ld/j;Lkotlin/coroutines/CoroutineContext$Element;)V

    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method
