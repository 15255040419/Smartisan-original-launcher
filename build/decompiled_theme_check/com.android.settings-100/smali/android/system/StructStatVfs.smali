.class public final Landroid/system/StructStatVfs;
.super Ljava/lang/Object;
.source "StructStatVfs.java"


# instance fields
.field public final f_bavail:J

.field public final f_bfree:J

.field public final f_blocks:J

.field public final f_bsize:J

.field public final f_favail:J

.field public final f_ffree:J

.field public final f_files:J

.field public final f_flag:J

.field public final f_frsize:J

.field public final f_fsid:J

.field public final f_namemax:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 64
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_bsize:J

    move-wide v1, p3

    .line 65
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_frsize:J

    move-wide v1, p5

    .line 66
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_blocks:J

    move-wide v1, p7

    .line 67
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_bfree:J

    move-wide v1, p9

    .line 68
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_bavail:J

    move-wide v1, p11

    .line 69
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_files:J

    move-wide/from16 v1, p13

    .line 70
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_ffree:J

    move-wide/from16 v1, p15

    .line 71
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_favail:J

    move-wide/from16 v1, p17

    .line 72
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_fsid:J

    move-wide/from16 v1, p19

    .line 73
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_flag:J

    move-wide/from16 v1, p21

    .line 74
    iput-wide v1, v0, Landroid/system/StructStatVfs;->f_namemax:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 78
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
