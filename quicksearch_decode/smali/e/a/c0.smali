.class public final enum Le/a/c0;
.super Ljava/lang/Enum;
.source "CoroutineStart.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/c0;

.field public static final enum b:Le/a/c0;

.field public static final enum c:Le/a/c0;

.field public static final enum d:Le/a/c0;

.field public static final synthetic e:[Le/a/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Le/a/c0;

    new-instance v1, Le/a/c0;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v3, v2}, Le/a/c0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/c0;->a:Le/a/c0;

    aput-object v1, v0, v2

    new-instance v1, Le/a/c0;

    const/4 v2, 0x1

    const-string v3, "LAZY"

    invoke-direct {v1, v3, v2}, Le/a/c0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/c0;->b:Le/a/c0;

    aput-object v1, v0, v2

    new-instance v1, Le/a/c0;

    const/4 v2, 0x2

    const-string v3, "ATOMIC"

    invoke-direct {v1, v3, v2}, Le/a/c0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/c0;->c:Le/a/c0;

    aput-object v1, v0, v2

    new-instance v1, Le/a/c0;

    const/4 v2, 0x3

    const-string v3, "UNDISPATCHED"

    invoke-direct {v1, v3, v2}, Le/a/c0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/c0;->d:Le/a/c0;

    aput-object v1, v0, v2

    sput-object v0, Le/a/c0;->e:[Le/a/c0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/c0;
    .locals 1

    const-class v0, Le/a/c0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/c0;

    return-object p0
.end method

.method public static values()[Le/a/c0;
    .locals 1

    sget-object v0, Le/a/c0;->e:[Le/a/c0;

    invoke-virtual {v0}, [Le/a/c0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/c0;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/b0;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ld/c;

    invoke-direct {p1}, Ld/c;-><init>()V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1, p2, p3}, Le/a/y1/b;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p1, p2, p3}, Ld/n/d;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {p1, p2, p3}, Le/a/y1/a;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 6
    sget-object v0, Le/a/c0;->b:Le/a/c0;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
