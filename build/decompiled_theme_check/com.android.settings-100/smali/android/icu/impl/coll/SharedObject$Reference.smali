.class public final Landroid/icu/impl/coll/SharedObject$Reference;
.super Ljava/lang/Object;
.source "SharedObject.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/SharedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/icu/impl/coll/SharedObject;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private ref:Landroid/icu/impl/coll/SharedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/impl/coll/SharedObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->removeRef()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    :cond_0
    return-void
.end method

.method public clone()Landroid/icu/impl/coll/SharedObject$Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/coll/SharedObject$Reference<",
            "TT;>;"
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/SharedObject$Reference;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget-object p0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 119
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object p0

    return-object p0
.end method

.method public copyOnWrite()Landroid/icu/impl/coll/SharedObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    .line 137
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->getRefCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-object v0

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject;->removeRef()V

    .line 141
    iput-object v1, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    .line 142
    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject;->addRef()V

    return-object v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 155
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 156
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject$Reference;->clear()V

    return-void
.end method

.method public readOnly()Landroid/icu/impl/coll/SharedObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Landroid/icu/impl/coll/SharedObject$Reference;->ref:Landroid/icu/impl/coll/SharedObject;

    return-object p0
.end method
