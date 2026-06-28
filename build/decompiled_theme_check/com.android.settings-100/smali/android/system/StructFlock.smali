.class public final Landroid/system/StructFlock;
.super Ljava/lang/Object;
.source "StructFlock.java"


# instance fields
.field public l_len:J

.field public l_pid:I

.field public l_start:J

.field public l_type:S

.field public l_whence:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
