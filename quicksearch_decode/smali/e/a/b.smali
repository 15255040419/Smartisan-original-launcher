.class public final Le/a/b;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/NotCompleted;


# static fields
.field public static final a:Le/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b;

    invoke-direct {v0}, Le/a/b;-><init>()V

    sput-object v0, Le/a/b;->a:Le/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    return-object v0
.end method
