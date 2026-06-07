.class public final Le/a/v0$a$a;
.super Ld/q/c/e;
.source "Executors.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v0$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/q/c/e;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "Le/a/v0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/v0$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/v0$a$a;

    invoke-direct {v0}, Le/a/v0$a$a;-><init>()V

    sput-object v0, Le/a/v0$a$a;->b:Le/a/v0$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld/q/c/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/CoroutineContext$Element;)Le/a/v0;
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/v0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/v0;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1}, Le/a/v0$a$a;->a(Lkotlin/coroutines/CoroutineContext$Element;)Le/a/v0;

    move-result-object p1

    return-object p1
.end method
