/***************************************************************************
  anem_desc.h
  -------------------
  Copyright (C) 2007-2011, Eco2s team, Antonio Forgione
  Copyright (C) 2011-2015, LI-COR Biosciences
  Author: Antonio Forgione

  This file is part of EddyPro (R).

  EddyPro (R) is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  EddyPro (R) is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with EddyPro (R). If not, see <http://www.gnu.org/licenses/>.
****************************************************************************/

#ifndef ANEM_DESC_H
#define ANEM_DESC_H

#include <QCoreApplication> // for Q_DECLARE_TR_FUNCTIONS
#include <QList>

class QString;
class QStringList;

class AnemDesc
{
    Q_DECLARE_TR_FUNCTIONS(AnemDesc)

public:
    static const QString getANEM_MANUFACTURER_STRING_0();
    static const QString getANEM_MANUFACTURER_STRING_1();
    static const QString getANEM_MANUFACTURER_STRING_2();
    static const QString getANEM_MANUFACTURER_STRING_3();
    static const QString getANEM_MANUFACTURER_STRING_4();

    static const QString getANEM_MODEL_STRING_0();
    static const QString getANEM_MODEL_STRING_1();
    static const QString getANEM_MODEL_STRING_2();
    static const QString getANEM_MODEL_STRING_3();
    static const QString getANEM_MODEL_STRING_4();
    static const QString getANEM_MODEL_STRING_5();
    static const QString getANEM_MODEL_STRING_6();
    static const QString getANEM_MODEL_STRING_7();
    static const QString getANEM_MODEL_STRING_8();
    static const QString getANEM_MODEL_STRING_9();
    static const QString getANEM_MODEL_STRING_10();
    static const QString getANEM_MODEL_STRING_11();
    static const QString getANEM_MODEL_STRING_12();

    static const QString getANEM_WIND_FORMAT_STRING_0();
    static const QString getANEM_WIND_FORMAT_STRING_1();
    static const QString getANEM_WIND_FORMAT_STRING_2();

    static const QString getANEM_NORTH_ALIGN_STRING_0();
    static const QString getANEM_NORTH_ALIGN_STRING_1();
    static const QString getANEM_NORTH_ALIGN_STRING_2();

    AnemDesc();

    AnemDesc(const QString& manufacturer,
             const QString& model,
             const QString& swVersion,
             const QString& id,
             qreal height,
             const QString& windFormat,
             const QString& northAlignment,
             qreal northOffset,
             qreal nSeparation,
             qreal eSeparation,
             qreal vSeparation,
             qreal vPathLength,
             qreal hPathLength,
             qreal tau,
             bool hasGoodWindComponents,
             bool hasGoodTemp);

    AnemDesc(const AnemDesc& anem);

    AnemDesc& operator=(const AnemDesc& anem);
    bool operator==(const AnemDesc& anem) const;
    bool operator<(const AnemDesc& anem) const;

    ~AnemDesc();

    // get/set manufacturer
    const QString& manufacturer() const;
    void setManufacturer(const QString& m);

    // get/set model
    const QString& model() const;
    void setModel(const QString& m);

    // get/set version
    const QString& swVersion() const;
    void setSwVersion(const QString& v);

    // get/set id
    const QString& id() const;
    void setId(const QString& i);

    // get/set height
    qreal height() const;
    void setHeight(qreal h);

    // get/set wind format
    const QString& windFormat() const;
    void setWindFormat(const QString& f);

    // get/set north alignment
    const QString& northAlignment() const;
    void setNorthAlignment(const QString& a);

    // get/set offset
    qreal northOffset() const;
    void setNorthOffset(qreal o);

    // get/set northward sep
    qreal nSeparation() const;
    void setNSeparation(qreal s);

    // get/set eastward sep
    qreal eSeparation() const;
    void setESeparation(qreal s);

    // get/set vertical sep
    qreal vSeparation() const;
    void setVSeparation(qreal s);

    qreal hPathLength() const;
    void setHPathLength(qreal s);

    qreal vPathLength() const;
    void setVPathLength(qreal s);

    qreal tau() const;
    void setTau(qreal s);

    bool hasGoodWindComponents() const;
    void setHasGoodWindComponents(bool s);

    bool hasGoodTemp() const;
    void setHasGoodTemp(bool s);

    // return a list of manufacturer strings
    static const QStringList manufacturerStringList();

    // return a list of model strings
    static const QStringList allModelStringList();
    static const QStringList campbellModelStringList();
    static const QStringList gillModelStringList();
    static const QStringList restrictedGillModelStringList();
    static const QStringList metekModelStringList();
    static const QStringList youngModelStringList();
    static const QStringList otherModelStringList();

    // return a list of wind format strings
    static const QStringList allWindFormatStringList();
    static const QStringList commonWindFormatStringList();
    static const QStringList simplestWindFormatStringList();

    // return a list of north alignment strings
    static const QStringList allNorthAlignmentStringList();
    static const QStringList gillNorthAlignmentStringList();
    static const QStringList naNorthAlignmentStringList();

    // return a list of boolean strings
    static const QStringList yesNoStringList();

    static bool isGoodAnemometer(AnemDesc anem);

private:
    QString manufacturer_;
    QString model_;
    QString swVersion_;
    QString id_;
    qreal height_;
    QString windFormat_;
    QString northAlignment_;
    qreal northOffset_;
    qreal nSeparation_;
    qreal eSeparation_;
    qreal vSeparation_;
    qreal vPathLength_;
    qreal hPathLength_;
    qreal tau_;
    bool hasGoodWindComponents_;
    bool hasGoodTemp_;
};

using AnemDescList = QList<AnemDesc>;

// Inlined Methods
inline bool AnemDesc::operator<(const AnemDesc& anem) const
    { return (manufacturer_ < anem.manufacturer_); }

inline const QString& AnemDesc::manufacturer() const
    { return manufacturer_; }

inline void AnemDesc::setManufacturer(const QString& m)
    { manufacturer_ = m; }

inline const QString& AnemDesc::model() const
    { return model_; }

inline void AnemDesc::setModel(const QString& m)
    { model_ = m; }

inline const QString& AnemDesc::swVersion() const
    { return swVersion_; }

inline void AnemDesc::setSwVersion(const QString& v)
    { swVersion_ = v; }

inline const QString& AnemDesc::id() const
    { return id_; }

inline void AnemDesc::setId(const QString& i)
    { id_ = i; }

inline qreal AnemDesc::height() const
    { return height_; }

inline void AnemDesc::setHeight(qreal h)
    { height_ = h; }

inline const QString& AnemDesc::windFormat() const
    { return windFormat_; }

inline void AnemDesc::setWindFormat(const QString& f)
    { windFormat_ = f; }

inline const QString& AnemDesc::northAlignment() const
    { return northAlignment_; }

inline void AnemDesc::setNorthAlignment(const QString& a)
    { northAlignment_ = a; }

inline qreal AnemDesc::northOffset() const
    { return northOffset_; }

inline void AnemDesc::setNorthOffset(qreal o)
    { northOffset_ = o; }

inline qreal AnemDesc::nSeparation() const
    { return nSeparation_; }

inline void AnemDesc::setNSeparation(qreal s)
    { nSeparation_ = s; }

inline qreal AnemDesc::eSeparation() const
    { return eSeparation_; }

inline void AnemDesc::setESeparation(qreal s)
    { eSeparation_ = s; }

inline qreal AnemDesc::vSeparation() const
    { return vSeparation_; }

inline void AnemDesc::setVSeparation(qreal s)
    { vSeparation_ = s; }

inline qreal AnemDesc::hPathLength() const
    { return hPathLength_; }

inline void AnemDesc::setHPathLength(qreal s)
    { hPathLength_ = s; }

inline qreal AnemDesc::vPathLength() const
    { return vPathLength_; }

inline void AnemDesc::setVPathLength(qreal s)
    { vPathLength_ = s; }

inline qreal AnemDesc::tau() const
    { return tau_; }

inline void AnemDesc::setTau(qreal s)
    { tau_ = s; }

inline bool AnemDesc::hasGoodWindComponents() const
    { return hasGoodWindComponents_; }

inline void AnemDesc::setHasGoodWindComponents(bool s)
    { hasGoodWindComponents_ = s; }

inline bool AnemDesc::hasGoodTemp() const
    { return hasGoodTemp_; }

inline void AnemDesc::setHasGoodTemp(bool s)
    { hasGoodTemp_ = s; }

#endif // ANEM_DESC_H
