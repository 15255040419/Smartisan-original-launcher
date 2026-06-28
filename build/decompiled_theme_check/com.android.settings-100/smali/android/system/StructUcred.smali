.class public final Landroid/system/StructUcred;
.super Ljava/lang/Object;
.source "StructUcred.java"


# instance fields
.field public final gid:I

.field public final pid:I

.field public final uid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/system/StructUcred;->pid:I

    .line 38
    iput p2, p0, Landroid/system/StructUcred;->uid:I

    .line 39
    iput p3, p0, Landroid/system/StructUcred;->gid:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
