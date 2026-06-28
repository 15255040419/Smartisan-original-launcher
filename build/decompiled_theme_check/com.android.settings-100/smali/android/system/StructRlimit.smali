.class public final Landroid/system/StructRlimit;
.super Ljava/lang/Object;
.source "StructRlimit.java"


# instance fields
.field public final rlim_cur:J

.field public final rlim_max:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/system/StructRlimit;->rlim_cur:J

    .line 33
    iput-wide p3, p0, Landroid/system/StructRlimit;->rlim_max:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
