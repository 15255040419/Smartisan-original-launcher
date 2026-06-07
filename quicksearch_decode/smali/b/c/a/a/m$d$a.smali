.class public final enum Lb/c/a/a/m$d$a;
.super Lb/c/a/a/m$d;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/m$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lb/c/a/a/m$d;-><init>(Ljava/lang/String;ILb/c/a/a/m$a;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Predicates.alwaysTrue()"

    return-object v0
.end method
