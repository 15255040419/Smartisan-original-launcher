.class public final Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternInfo"
.end annotation


# static fields
.field public static final BASE_CONFLICT:I = 0x1

.field public static final CONFLICT:I = 0x2

.field public static final OK:I


# instance fields
.field public conflictingPattern:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
