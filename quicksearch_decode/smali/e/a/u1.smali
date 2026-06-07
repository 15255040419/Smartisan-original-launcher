.class public final Le/a/u1;
.super Ld/n/a;
.source "Unconfined.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/u1$a;
    }
.end annotation


# static fields
.field public static final b:Le/a/u1$a;


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/u1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/u1$a;-><init>(Ld/q/c/c;)V

    sput-object v0, Le/a/u1;->b:Le/a/u1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Le/a/u1;->b:Le/a/u1$a;

    invoke-direct {p0, v0}, Ld/n/a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method
