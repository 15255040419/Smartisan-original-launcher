.class public final Le/a/w0;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# instance fields
.field public final a:Le/a/l1;


# direct methods
.method public constructor <init>(Le/a/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w0;->a:Le/a/l1;

    return-void
.end method


# virtual methods
.method public getList()Le/a/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w0;->a:Le/a/l1;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Le/a/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/w0;->getList()Le/a/l1;

    move-result-object v0

    const-string v1, "New"

    invoke-virtual {v0, v1}, Le/a/l1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
