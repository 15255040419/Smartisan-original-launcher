.class public final Le/a/s1;
.super Le/a/v;
.source "Unconfined.kt"


# static fields
.field public static final b:Le/a/s1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/s1;

    invoke-direct {v0}, Le/a/s1;-><init>()V

    sput-object v0, Le/a/s1;->b:Le/a/s1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Le/a/u1;->b:Le/a/u1$a;

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Le/a/u1;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Le/a/u1;->a:Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Unconfined"

    return-object v0
.end method
