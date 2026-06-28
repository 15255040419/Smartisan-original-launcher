.class public final Landroid/system/StructStat;
.super Ljava/lang/Object;
.source "StructStat.java"


# instance fields
.field public final st_atim:Landroid/system/StructTimespec;

.field public final st_atime:J

.field public final st_blksize:J

.field public final st_blocks:J

.field public final st_ctim:Landroid/system/StructTimespec;

.field public final st_ctime:J

.field public final st_dev:J

.field public final st_gid:I

.field public final st_ino:J

.field public final st_mode:I

.field public final st_mtim:Landroid/system/StructTimespec;

.field public final st_mtime:J

.field public final st_nlink:J

.field public final st_rdev:J

.field public final st_size:J

.field public final st_uid:I


# direct methods
.method public constructor <init>(JJIJIIJJJJJJJ)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v17, p20

    move-wide/from16 v19, p22

    .line 89
    new-instance v15, Landroid/system/StructTimespec;

    move-object v14, v15

    const-wide/16 v0, 0x0

    move-wide/from16 v2, p14

    invoke-direct {v15, v2, v3, v0, v1}, Landroid/system/StructTimespec;-><init>(JJ)V

    new-instance v2, Landroid/system/StructTimespec;

    move-object v15, v2

    move-wide/from16 v3, p16

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/system/StructTimespec;-><init>(JJ)V

    new-instance v2, Landroid/system/StructTimespec;

    move-object/from16 v16, v2

    move-wide/from16 v3, p18

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/system/StructTimespec;-><init>(JJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v20}, Landroid/system/StructStat;-><init>(JJIJIIJJLandroid/system/StructTimespec;Landroid/system/StructTimespec;Landroid/system/StructTimespec;JJ)V

    return-void
.end method

.method public constructor <init>(JJIJIIJJLandroid/system/StructTimespec;Landroid/system/StructTimespec;Landroid/system/StructTimespec;JJ)V
    .locals 6

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p15

    move-object/from16 v3, p16

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v4, p1

    .line 100
    iput-wide v4, v0, Landroid/system/StructStat;->st_dev:J

    move-wide v4, p3

    .line 101
    iput-wide v4, v0, Landroid/system/StructStat;->st_ino:J

    move v4, p5

    .line 102
    iput v4, v0, Landroid/system/StructStat;->st_mode:I

    move-wide v4, p6

    .line 103
    iput-wide v4, v0, Landroid/system/StructStat;->st_nlink:J

    move v4, p8

    .line 104
    iput v4, v0, Landroid/system/StructStat;->st_uid:I

    move v4, p9

    .line 105
    iput v4, v0, Landroid/system/StructStat;->st_gid:I

    move-wide/from16 v4, p10

    .line 106
    iput-wide v4, v0, Landroid/system/StructStat;->st_rdev:J

    move-wide/from16 v4, p12

    .line 107
    iput-wide v4, v0, Landroid/system/StructStat;->st_size:J

    .line 108
    iget-wide v4, v1, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v4, v0, Landroid/system/StructStat;->st_atime:J

    .line 109
    iget-wide v4, v2, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v4, v0, Landroid/system/StructStat;->st_mtime:J

    .line 110
    iget-wide v4, v3, Landroid/system/StructTimespec;->tv_sec:J

    iput-wide v4, v0, Landroid/system/StructStat;->st_ctime:J

    .line 111
    iput-object v1, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    .line 112
    iput-object v2, v0, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    .line 113
    iput-object v3, v0, Landroid/system/StructStat;->st_ctim:Landroid/system/StructTimespec;

    move-wide/from16 v1, p17

    .line 114
    iput-wide v1, v0, Landroid/system/StructStat;->st_blksize:J

    move-wide/from16 v1, p19

    .line 115
    iput-wide v1, v0, Landroid/system/StructStat;->st_blocks:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 119
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
