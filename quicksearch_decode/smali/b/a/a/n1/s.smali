.class public Lb/a/a/n1/s;
.super Ljava/lang/Object;
.source "MultiSimAdapter.java"


# static fields
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/util/MultiSimAdapter;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lb/a/a/n1/s;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lb/a/a/n1/s;->a:Z

    return v0
.end method

.method public static a(I)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lb/a/a/n1/s;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lsmartisanos/util/MultiSimAdapter;->hasIccCard(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Z
    .locals 3

    .line 3
    invoke-static {}, Lb/a/a/n1/s;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1}, Lb/a/a/n1/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lb/a/a/n1/s;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public static b(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lb/a/a/n1/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lsmartisanos/util/MultiSimAdapter;->isSlotActive(I)Z

    move-result p0

    return p0
.end method

.method public static c(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lb/a/a/n1/s;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method
