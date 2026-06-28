.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EFractionHandling"
.end annotation


# static fields
.field public static final FPAUCAL:B = 0x3t

.field public static final FPLURAL:B = 0x0t

.field public static final FSINGULAR_PLURAL:B = 0x1t

.field public static final FSINGULAR_PLURAL_ANDAHALF:B = 0x2t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "FPLURAL"

    const-string v1, "FSINGULAR_PLURAL"

    const-string v2, "FSINGULAR_PLURAL_ANDAHALF"

    const-string v3, "FPAUCAL"

    .line 284
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    return-void
.end method
